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
    final shipBloc = context.read<ShipmentBloc>();
    return WillPopScope(
      onWillPop: () async {
        context.read<AppBloc>().add(DisSelectPickup());
        return true;
      },
      child: SafeArea(
          child: Scaffold(
        body: Center(
          child: IoCard(
            height: size.height / 2.5,
            content: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("행정구역"),
                      Text(p.shipment.startAddress.adminArea)
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("픽업수량"),
                      Text("${p.order.orderCnt} 벌")
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("주문상태"),
                      Text(
                        p.order.state.toString(),
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: customColors.success),
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
                    debugPrint("픽업시작");
                    shipBloc.add(StartPickup(shipOrder: p));
                  },
                  child: const Text("픽업시작")),
              OutlinedButton(
                  onPressed: () {
                    debugPrint("픽업완료");
                    shipBloc.add(DonePickup(shipOrder: p));
                  },
                  child: const Text("픽업완료")),
              OutlinedButton(
                  onPressed: () {
                    debugPrint("배송전");
                    shipBloc.add(ToBeforeShip(shipOrder: p));
                  },
                  child: const Text("배송전")),
              OutlinedButton(
                  onPressed: () {
                    debugPrint("배송시작");
                    shipBloc.add(StartShip(shipOrder: p));
                  },
                  child: const Text("배송시작")),
              OutlinedButton(
                  onPressed: () {
                    debugPrint("배송완료");
                    shipBloc.add(DoneShip(shipOrder: p));
                  },
                  child: const Text("배송완료")),
            ],
          ),
        ),
      )),
    );
  }
}
