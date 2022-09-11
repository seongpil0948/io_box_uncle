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
    return Scaffold(
      appBar: AppBar(title: const Text("엉클 박스")),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: ElevatedButton(
            onPressed: (() async {
              await context.read<AuthRepo>().kakaoLogin();
            }),
            child: Image.asset('assets/images/kakao_login_ko.png')),
      ),
    );
  }
}
