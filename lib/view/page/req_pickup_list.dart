part of './index.dart';

class ReqPickupPage extends StatelessWidget {
  const ReqPickupPage({Key? key}) : super(key: key);
  static Page<void> page() => const MaterialPage<void>(child: ReqPickupPage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Card(child: Row(children: const [Text("픽업 요청"), Text("999건")])),
            const Text("상세 내용"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("도매처명"), Text("뭉멍이네")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("상세정보"),
                Column(
                  children: const [Text("디오트 3층 a 13"), Text("02-2117-0001")],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("픽업 수량"), Text("15벌")],
            ),
            const Divider()
          ],
        )),
      ),
    );
  }
}
