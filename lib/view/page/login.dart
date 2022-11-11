part of "./index.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Page<void> page() => const MaterialPage<void>(child: LoginPage());
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final btnWidth = size.width * 0.9;
    return Scaffold(
      appBar: AppBar(title: const Text("엉클 박스 로그인")),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.amber,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("엉클 관리자로부터 등록된 근로자 계정만"),
            const Text("해당 어플리케이션을 사용 할 수 있습니다!"),
            Container(
              width: btnWidth,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                  onPressed: (() async {
                    await context.read<AuthRepo>().kakaoLogin();
                  }),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  child: Image.asset('assets/images/kakao_login_ko.png')),
            ),
            Container(
              width: btnWidth,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                  onPressed: (() async {
                    await context.read<AuthRepo>().signInWithGoogle();
                    if (!mounted) {
                      return;
                    }
                  }),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  child: Image.asset('assets/images/google_login.png')),
            ),
            Container(
              width: btnWidth,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: SignInWithAppleButton(
                height: 66,
                onPressed: () async {
                  await context.read<AuthRepo>().appleLogin();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
