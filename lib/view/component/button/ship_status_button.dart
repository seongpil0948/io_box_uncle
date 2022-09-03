part of "./index.dart";

List<Widget> shipStatusBtns(BuildContext context, ShipOrder p) {
  final shipBloc = context.read<ShipmentBloc>();
  return [
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
  ];
}
