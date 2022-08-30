part of "../index.dart";

class PickupDetailPage extends StatelessWidget {
  final ShipOrder p;
  const PickupDetailPage({Key? key, required this.p}) : super(key: key);
  static Page<void> page({required ShipOrder p}) =>
      MaterialPage<void>(child: PickupDetailPage(p: p));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return SafeArea(
        child: Scaffold(
      body: IoCard(
        height: size.height / 2.5,
        content: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text("행정구역"),
              Text(p.shipment.startAddress.adminArea)
            ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("픽업수량"), Text("${p.order.orderCnt} 벌")]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text("주문상태"),
              Text(
                p.order.state.toString(),
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: customColors.success),
              )
            ]),
          ],
        ),
        footer: [
          OutlinedButton(
              onPressed: () {
                debugPrint("토스요청");
              },
              child: const Text("토스요청")),
          OutlinedButton(
              onPressed: () {
                debugPrint("픽업완료");
              },
              child: const Text("픽업완료")),
        ],
      ),
    ));
  }
}

class IoCard extends StatelessWidget {
  final Widget? title;
  final Widget? titleExtra;
  final Widget? subtitle;
  final List<Widget>? footer;
  final Widget content;
  final double height;

  const IoCard({
    Key? key,
    this.title,
    this.titleExtra,
    this.subtitle,
    this.footer,
    required this.content,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>()!;
    final T = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Card(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: height,
        child: Column(children: [
          if (title != null)
            Row(
              children: [title!, if (titleExtra != null) titleExtra!],
            ),
          if (subtitle != null) subtitle!,
          Expanded(child: content),
          if (footer != null) ...[
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: footer!
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: e,
                      ))
                  .toList(),
            )
          ]
        ]),
      ),
    ));
  }
}
