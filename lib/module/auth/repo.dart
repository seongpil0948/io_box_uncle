part of './index.dart';

class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final SharedPreferences pref;
  static const userCacheKey = '__user_cache_key__';
  AuthRepo({required this.pref});

  Stream<Future<IoUser?>> get user {
    return _auth.authStateChanges().map((firebaseUser) async {
      await IoLogger.log(
          IoSeverity.debug, "authStateChanges, firebaseUser: $firebaseUser");
      if (firebaseUser == null) {
        pref.remove(userCacheKey);
        return null;
      }

      final user = await getUserById(firebaseUser.uid);
      if (user.userInfo.role != UserRole.uncleWorker) {
        await IoLogger.log(IoSeverity.warn,
            "user id(${user.userInfo.userId}) role (${user.userInfo.role}) not uncle worker");
        return null;
      }
      // final j = user.toJsonCache();
      final j = user.toJson();
      pref.setString(userCacheKey, jsonEncode(j));
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
        IoLogger.log(IoSeverity.error,
            "Error in load currentUser $e, user string: $usrStr");
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

  static Future<List<IoUser>> getUserByIds(List<String> userIds) async {
    assert(userIds.length < 11);
    final snapshot = await getCollection(c: IoCollection.users)
        .where("userInfo.userId", whereIn: userIds)
        .get();
    assert(snapshot.size == userIds.length);
    return snapshot.docs
        .map((e) => IoUser.fromJson(e.data() as Map<String, dynamic>))
        .toList();
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> kakaoLogin() async {
    k.OAuthToken? token;
    try {
      token = await k.UserApi.instance.loginWithKakaoAccount();
    } catch (error) {
      await IoLogger.log(IoSeverity.error, '카카오계정으로 로그인 실패 $error');
    }
    // // 카카오톡이 설치되어 있으면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
    // if (await k.isKakaoTalkInstalled()) {
    //   try {
    //     token = await k.UserApi.instance.loginWithKakaoTalk();
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
    //     }
    //   }
    // } else {
    //   try {
    //     token = await k.UserApi.instance.loginWithKakaoAccount();
    //   } catch (error) {
    //   }
    // }
    try {
      k.User user = await k.UserApi.instance.me();
      if (token != null) {
        final url = "$ioApiUrl/auth/customToken/${user.id}";
        final res = await Dio().get(url);
        final String customToken = res.data['token'];
        // final String userId = res.data['userId'];
        await loginWithCustomToken(customToken);
      }
    } catch (error) {
      if (error is DioError) {
        await IoLogger.log(IoSeverity.error,
            "${error.response?.realUri} ${error.type}, ${error.response?.statusMessage}, ${error.response?.data}, ${error.error}");
      } else {
        await IoLogger.log(
            IoSeverity.error, "error runtimeType: ${error.runtimeType}");
      }
      await IoLogger.log(
          IoSeverity.error, '사용자 정보 요청 혹은 loginWithCustomToken 실패 $error');
    }
  }

  Future<void> loginWithCustomToken(String token) async {
    try {
      await _auth.signInWithCustomToken(token);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-custom-token":
          await IoLogger.log(IoSeverity.error,
              "The supplied token is not a Firebase custom _auth token.");
          break;
        case "custom-token-mismatch":
          await IoLogger.log(IoSeverity.error,
              "The supplied token is for a different Firebase project.");
          break;
        default:
          await IoLogger.log(
              IoSeverity.error, "Unknown error. in loginWithCustomToken");
      }
    }
  }

  Future<void> logOut() async {
    pref.remove(userCacheKey);
    await _auth.signOut();
  }
}
