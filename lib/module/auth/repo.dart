part of './index.dart';

class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final SharedPreferences pref;
  static const userCacheKey = '__user_cache_key__';
  AuthRepo({required this.pref});

  Stream<Future<IoUser?>> get user {
    return _auth.authStateChanges().map((firebaseUser) async {
      final user =
          firebaseUser == null ? null : await getUserById(firebaseUser.uid);
      if (user != null) {
        final j = user.toJsonCache();
        pref.setString(userCacheKey, jsonEncode(j));
      }
      if (kDebugMode) {
        print(
            "authStateChanges, firebaseUser: $firebaseUser \n io user: $user ");
      }
      return user;
    });
  }

  /// Returns the current cached user.
  /// Defaults to [User.empty] if there is no cached user.
  IoUser? get currentUser {
    final usrStr = pref.getString(userCacheKey);
    if (usrStr != null) {
      return IoUser(jsonDecode(usrStr));
    } else {
      return null;
    }
  }

  static Future<IoUser> getUserById(String userId) async {
    final doc = await getCollection(c: Collections.users).doc(userId).get();
    assert(doc.exists);
    return IoUser(doc.data() as Map<String, dynamic>);
  }

  void kakaoLogin() async {
    k.OAuthToken? token;
    // 카카오톡이 설치되어 있으면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
    if (await k.isKakaoTalkInstalled()) {
      try {
        token = await k.UserApi.instance.loginWithKakaoTalk();
        debugPrint('카카오톡으로 로그인 성공');
      } catch (error) {
        // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
        // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
        if (error is PlatformException && error.code == 'CANCELED') {
          return;
        }
        // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
        try {
          token = await k.UserApi.instance.loginWithKakaoAccount();
          debugPrint('카카오계정으로 로그인 성공');
        } catch (error) {
          debugPrint('카카오계정으로 로그인 실패 $error');
        }
      }
    } else {
      try {
        token = await k.UserApi.instance.loginWithKakaoAccount();
        debugPrint('카카오계정으로 로그인 성공');
      } catch (error) {
        debugPrint('카카오계정으로 로그인 실패 $error');
      }
    }
    try {
      k.User user = await k.UserApi.instance.me();
      debugPrint('사용자 정보 요청 성공'
          '\n회원번호: ${user.id}'
          '\n닉네임: ${user.kakaoAccount?.profile?.nickname}'
          '\n이메일: ${user.kakaoAccount?.email}');
    } catch (error) {
      debugPrint('사용자 정보 요청 실패 $error');
    }
    if (token != null) {
      await loginWithCustomToken(token.accessToken);
    }
  }

  Future<void> loginWithCustomToken(String token) async {
    try {
      await _auth.signInWithCustomToken(token);
      debugPrint("Sign-in successful.");
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-custom-token":
          debugPrint(
              "The supplied token is not a Firebase custom _auth token.");
          break;
        case "custom-token-mismatch":
          debugPrint("The supplied token is for a different Firebase project.");
          break;
        default:
          debugPrint("Unknown error.");
      }
    }
  }

  Future<void> logOut() async {
    pref.remove(userCacheKey);
    await _auth.signOut();
  }
}
