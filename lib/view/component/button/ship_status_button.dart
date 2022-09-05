part of "./index.dart";

List<Widget> shipStatusBtns(BuildContext context, ShipOrder p) {
  final shipBloc = context.read<ShipmentBloc>();
  return [
    if (p.order.state == OrderState.beforePickup)
      OutlinedButton(
          onPressed: () {
            showConfirmClose(context, () {
              shipBloc.add(StartPickup(shipOrder: p));
              context.read<AppBloc>().add(DisSelectPickup());
            }, "픽업시작 처리 하시겠습니까?");
          },
          child: const Text("픽업시작")),
    if (p.order.state == OrderState.ongoingPickup)
      OutlinedButton(
          onPressed: () {
            showConfirmClose(context, () {
              shipBloc.add(DonePickup(shipOrder: p));
              context.read<AppBloc>().add(DisSelectPickup());
            }, "픽업완료 처리 하시겠습니까?");
          },
          child: const Text("픽업완료")),
    if (p.order.state == OrderState.pickupComplete)
      OutlinedButton(
          onPressed: () {
            showConfirmClose(context, () {
              shipBloc.add(ToBeforeShip(shipOrder: p));
              context.read<AppBloc>().add(DisSelectPickup());
            }, "배송전 처리 하시겠습니까?");
          },
          child: const Text("배송전")),
    if (p.order.state == OrderState.beforeShip)
      OutlinedButton(
          onPressed: () {
            showConfirmClose(context, () {
              shipBloc.add(StartShip(shipOrder: p));
              context.read<AppBloc>().add(DisSelectPickup());
            }, "배송시작 처리 하시겠습니까?");
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
            showConfirmClose(context, () {
              shipBloc.add(DoneShip(shipOrder: p));
              context.read<AppBloc>().add(DisSelectPickup());
            }, "배송완료 처리 하시겠습니까?");
          },
          child: const Text("배송완료")),
  ];
}

Future showConfirmClose(
    BuildContext context, void Function() onConfirm, String content) {
  return showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: const Text("배송상태 변경"),
            content: Text(content),
            actions: [
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("취소")),
              CupertinoDialogAction(
                  onPressed: () {
                    onConfirm();
                    Navigator.of(context).pop();
                  },
                  child: const Text("승인")),
            ],
          ));
}
