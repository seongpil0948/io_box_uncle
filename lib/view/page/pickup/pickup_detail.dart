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
            title: BackButton(onPressed: () {
              context.read<AppBloc>().add(DisSelectPickup());
            }),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("주소"),
                      Text(
                          "${p.shipment.startAddress.adminArea}, ${p.shipment.startAddress.alias}")
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
              if (p.order.state == OrderState.beforePickup)
                OutlinedButton(
                    onPressed: () {
                      shipBloc.add(StartPickup(shipOrder: p));
                      context.read<AppBloc>().add(DisSelectPickup());
                    },
                    child: const Text("픽업시작")),
              if (p.order.state == OrderState.ongoingPickup)
                OutlinedButton(
                    onPressed: () {
                      shipBloc.add(DonePickup(shipOrder: p));
                      context.read<AppBloc>().add(DisSelectPickup());
                    },
                    child: const Text("픽업완료")),
              if (p.order.state == OrderState.pickupComplete)
                OutlinedButton(
                    onPressed: () {
                      shipBloc.add(ToBeforeShip(shipOrder: p));
                      context.read<AppBloc>().add(DisSelectPickup());
                    },
                    child: const Text("배송전")),
              if (p.order.state == OrderState.beforeShip)
                OutlinedButton(
                    onPressed: () {
                      shipBloc.add(StartShip(shipOrder: p));
                      context.read<AppBloc>().add(DisSelectPickup());
                    },
                    child: const Text("배송시작")),
              OutlinedButton(
                  onPressed: () {
                    debugPrint("토스요청");
                  },
                  child: const Text("토스요청")),
              if (p.order.state == OrderState.shipping)
                OutlinedButton(
                    onPressed: () {
                      shipBloc.add(DoneShip(shipOrder: p));
                      context.read<AppBloc>().add(DisSelectPickup());
                    },
                    child: const Text("배송완료")),
            ],
          ),
        ),
      )),
    );
  }
}
