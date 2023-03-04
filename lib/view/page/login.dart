part of "./index.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Page<void> page() => const MaterialPage<void>(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final btnWidth = size.width * 0.9;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFD8B786), Color(0xFFFFC239)],
            stops: [0, 1],
            begin: AlignmentDirectional(1, -1),
            end: AlignmentDirectional(-1, 1),
          ),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo/1024x1024.png",
              width: size.width / 7,
              height: size.width / 7,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width * 0.9,
              child: const _EmailForm(),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          size: 30,
                          color: Color(0xFF2C2C2C),
                        ),
                        onPressed: () async {
                          await context.read<AuthRepo>().signInWithGoogle();
                        }),
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.apple,
                          size: 30,
                          color: Color(0xFF2C2C2C),
                        ),
                        onPressed: () async {
                          await context.read<AuthRepo>().appleLogin();
                        }),
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.kickstarterK,
                          size: 30,
                          color: Color(0xFF2C2C2C),
                        ),
                        onPressed: () async {
                          await context.read<AuthRepo>().kakaoLogin();
                        })
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class _EmailForm extends StatefulWidget {
  const _EmailForm();
  @override
  _EmailFormState createState() => _EmailFormState();
}

class _EmailFormState extends State<_EmailForm> {
  late TextEditingController emailController;
  late TextEditingController pwController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    pwController = TextEditingController();
  }

  // _MyCustomFormState가 제거될 때 호출
  @override
  void dispose() {
    // 텍스트에디팅컨트롤러를 제거하고, 등록된 리스너도 제거된다.
    emailController.dispose();
    pwController.dispose();
    super.dispose();
  }

  void showSnack(String content) {
    debugPrint("in showSnack: $content");
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(content),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final T = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            style: T.bodyMedium,
            controller: emailController,
            textAlign: TextAlign.center,
            autofocus: true,
            obscureText: false,
            decoration: getInputDeco(T.bodySmall, "Email"),
            validator: (val) => val == null ? "이메일을 입력 해주세요" : null,
          ),
        ),
        Container(
          width: 300,
          height: 50,
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            style: T.bodyMedium,
            controller: pwController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: getInputDeco(T.bodySmall, "Password"),
            validator: (val) => val == null ? "비밀번호를 입력 해주세요" : null,
          ),
        ),
        Container(
          width: size.width * 0.7,
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFFC239),
              textStyle: T.titleMedium?.copyWith(
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w800),
              side: const BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
            ),
            onPressed: () async {
              debugPrint("try email login");
              try {
                final result = await context
                    .read<AuthRepo>()
                    .signInWithPw(emailController.text, pwController.text);
                debugPrint("UserCredential of signInWithPw: $result");
              } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  showSnack('존재하지 않는 이메일입니다.');
                } else if (e.code == 'wrong-password') {
                  showSnack('비번이 틀렸습니다.');
                }
              } catch (e) {
                showSnack("로그인 실패.. $e");
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                  child: Text(
                "Login",
                style: T.bodyLarge,
              )),
            ),
          ),
        ),
      ],
    );
  }
}

InputDecoration getInputDeco(TextStyle? hintStyle, String hintText) =>
    InputDecoration(
      hintText: hintText,
      hintStyle: hintStyle,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0x00000000),
          width: 1,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4.0),
          topRight: Radius.circular(4.0),
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0x00000000),
          width: 1,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4.0),
          topRight: Radius.circular(4.0),
        ),
      ),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0x00000000),
          width: 1,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4.0),
          topRight: Radius.circular(4.0),
        ),
      ),
      focusedErrorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Color(0x00000000),
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(4.0),
          topRight: Radius.circular(4.0),
        ),
      ),
    );
