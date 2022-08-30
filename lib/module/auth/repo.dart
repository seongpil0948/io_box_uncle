part of './index.dart';

class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final SharedPreferences pref;
  static const userCacheKey = '__user_cache_key__';
  AuthRepo({required this.pref});

  Stream<Future<IoUser?>> get user {
    return _auth.authStateChanges().map((firebaseUser) async {
      // FIXME: 유저롤이 엉클관리자가 아닐때 조치해야함
      if (kDebugMode) {
        print("authStateChanges, firebaseUser: $firebaseUser");
      }
      if (firebaseUser == null) {
        pref.remove(userCacheKey);
        return null;
      }

      final user = await getUserById(firebaseUser.uid);
      // final j = user.toJsonCache();
      final j = user.toJson();
      pref.setString(userCacheKey, jsonEncode(j));
      if (kDebugMode) {
        print("authStateChanges, io user: $user ");
      }
      return user;
    });
  }

  /// Returns the current cached user.
  /// Defaults to [User.empty] if there is no cached user.
  IoUser? get currentUser {
    final usrStr = pref.getString(userCacheKey);
    if (usrStr != null && usrStr.isNotEmpty) {
      try {
        // return IoUser(jsonDecode(usrStr));
        return IoUser.fromJson(jsonDecode(usrStr));
      } catch (e) {
        if (kDebugMode) {
          print("Error in currentUser $e");
        }
        pref.remove(userCacheKey);
        return null;
      }
    } else {
      return null;
    }
  }

  static Future<IoUser> getUserById(String userId) async {
    final doc = await getCollection(c: IoCollection.users).doc(userId).get();
    assert(doc.exists);
    // return IoUser(doc.data() as Map<String, dynamic>);
    return IoUser.fromJson(doc.data() as Map<String, dynamic>);
  }

  Future<void> kakaoLogin() async {
    k.OAuthToken? token;
    try {
      token = await k.UserApi.instance.loginWithKakaoAccount();
    } catch (error) {
      debugPrint('카카오계정으로 로그인 실패 $error');
    }
    // // 카카오톡이 설치되어 있으면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
    // if (await k.isKakaoTalkInstalled()) {
    //   try {
    //     token = await k.UserApi.instance.loginWithKakaoTalk();
    //     debugPrint('카카오톡으로 로그인 성공');
    //   } catch (error) {
    //     // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
    //     // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
    //     if (error is PlatformException && error.code == 'CANCELED') {
    //       return;
    //     }
    //     // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
    //     try {
    //       token = await k.UserApi.instance.loginWithKakaoAccount();
    //     } catch (error) {
    //       debugPrint('카카오계정으로 로그인 실패 $error');
    //     }
    //   }
    // } else {
    //   try {
    //     token = await k.UserApi.instance.loginWithKakaoAccount();
    //   } catch (error) {
    //     debugPrint('카카오계정으로 로그인 실패 $error');
    //   }
    // }
    try {
      k.User user = await k.UserApi.instance.me();
      // debugPrint('사용자 정보 요청 성공'
      //     '\n회원번호: ${user.id}'
      //     '\n닉네임: ${user.kakaoAccount?.profile?.nickname}'
      //     '\n이메일: ${user.kakaoAccount?.email}');
      if (token != null) {
        final url = "$ioApiUrl/auth/customToken/${user.id}";
        final res = await Dio().get(url);
        final String customToken = res.data['token'];
        // final String userId = res.data['userId'];
        await loginWithCustomToken(customToken);
      }
    } catch (error) {
      if (error is DioError) {
        debugPrint(
            "${error.response?.realUri} ${error.type}, ${error.response?.statusMessage}, ${error.response?.data}, ${error.error}");
      } else {
        debugPrint("error runtimeType: ${error.runtimeType}");
      }
      debugPrint('사용자 정보 요청 혹은 loginWithCustomToken 실패 $error');
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
