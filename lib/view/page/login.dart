part of "./index.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Page<void> page() => const MaterialPage<void>(child: LoginPage());

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.1),
              Text("엉클 관리자로부터 등록된 근로자 계정만",
                  style: Theme.of(context).textTheme.subtitle1),
              Text("해당 어플리케이션을 사용 할 수 있습니다!",
                  style: Theme.of(context).textTheme.subtitle1),
              Container(
                  margin: EdgeInsets.symmetric(
                      vertical: 10, horizontal: size.width * 0.1),
                  child: const _EmailForm()),
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
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(content),
        ),
      );
  }

  String _errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          keyboardType: TextInputType.emailAddress,
          controller: emailController,
          decoration: const InputDecoration(labelText: '이메일'),
          onChanged: (val) {
            validateEmail(val);
          },
        ),
        TextField(
          keyboardType: TextInputType.visiblePassword,
          controller: pwController,
          decoration: const InputDecoration(labelText: '비밀번호'),
          obscureText: true,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async {
              try {
                await context
                    .read<AuthRepo>()
                    .signInWithPw(emailController.text, pwController.text);
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
            child: const Text('로그인'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _errorMessage,
            style: const TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }
}
