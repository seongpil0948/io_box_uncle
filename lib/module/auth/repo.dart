part of './index.dart';

class AuthRepo with WidgetsBindingObserver {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final SharedPreferences pref;
  static const userCacheKey = '__user_cache_key__';

  AuthRepo({required this.pref}) {
    currentUser
        ?.copyWith(connectState: AppLifecycleState.resumed.name)
        .update(refreshUpdatedAt: false);
    WidgetsBinding.instance.addObserver(this);
  }

  /// make sure the clients of this library invoke the dispose method
  /// so that the observer can be unregistered
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (currentUser != null) {
      currentUser
          ?.copyWith(connectState: state.name)
          .update(refreshUpdatedAt: false);
    }
  }

  Stream<Future<IoUser?>> get user {
    return _auth.authStateChanges().map((firebaseUser) async {
      await IoLogger.log(
          IoSeverity.debug, "authStateChanges, firebaseUser: $firebaseUser");
      if (firebaseUser == null) {
        pref.remove(userCacheKey);
        return null;
      }

      final user = await getUserById(firebaseUser.uid);
      final context = App.navigatorKey.currentContext;
      if (user == null) {
        if (context != null) {
          showDialog(
              context: context,
              builder: (_) => const AlertDialog(
                  title: Text("계정 오류"),
                  content: Text("존재하지 않는 계정 입니다."),
                  elevation: 24.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))));
        }
        return null;
      } else if (user.userInfo.role != UserRole.uncleWorker) {
        if (context != null) {
          showDialog(
              context: context,
              builder: (_) => const AlertDialog(
                  title: Text("권한 오류"),
                  content: Text("엉클 근로자 권한을 가진 계정에게 제공되는 서비스 입니다."),
                  elevation: 24.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))));
        }

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

  static Future<IoUser?> getUserById(String userId) async {
    final doc = await getCollection(c: IoCollection.users).doc(userId).get();
    if (!doc.exists) return null;
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

  Future<UserCredential> signInWithPw(String email, String pw) async {
    return await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: pw,
    );
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

  Future<void> appleLogin() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      // Remove these if you have no need for them
      // nonce: 'example-nonce',
      // state: 'example-state',
    );

    debugPrint("apple credential: $credential");
    final oauthCredential = OAuthProvider("apple.com").credential(
      idToken: credential.identityToken,
      accessToken: credential.authorizationCode,
    );

    final authResult =
        await FirebaseAuth.instance.signInWithCredential(oauthCredential);
    debugPrint("authResult: $authResult");
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
