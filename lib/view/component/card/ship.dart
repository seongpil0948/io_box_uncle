part of "./common.dart";

class ShipThumb extends StatelessWidget {
  const ShipThumb({
    Key? key,
    required this.dest,
    required this.order,
    required this.isBig,
    required this.shopUser,
    required this.vendorUser,
  }) : super(key: key);

  final Locate dest;
  final OrderItem order;
  final bool isBig;
  final IoUser shopUser;
  final IoUser vendorUser;

  @override
  Widget build(BuildContext context) {
    final T = Theme.of(context).textTheme;
    txt(String? t) => Text(
          t ?? "",
          overflow: TextOverflow.ellipsis,
          style: T.titleMedium,
          textAlign: TextAlign.end,
        );
    final destTxt = order.isPickup
        ? order.isReturn
            ? "소매처명"
            : "도매처명"
        : order.isReturn
            ? "도매처명"
            : "소매처명";
    String? getUserPhone(IoUser u) {
      final result = u.companyInfo?.managerPhone == null ||
              u.companyInfo!.managerPhone.isEmpty
          ? u.userInfo.phone
          : u.companyInfo!.managerPhone;
      return result;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            txt(destTxt),
            txt(destTxt == "소매처명" ? shopUser.name : vendorUser.name),
          ],
        ),
        if (isBig)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              txt("연락처"),
              txt(destTxt == "소매처명"
                  ? getUserPhone(shopUser)
                  : getUserPhone(vendorUser))
            ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // txt(order.isPickup ? "픽업주소" : "배송주소"),
            txt("상세주소"),
            const SizedBox(width: 10),
            Expanded(child: txt("${dest.alias} | ${dest.detailLocate}")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            txt("픽업수량"),
            txt("${order.activeCnt}"),
          ],
        )
      ]),
    );
  }
}

class ShipAmountCard extends StatelessWidget {
  final ShipOrder p;
  const ShipAmountCard({super.key, required this.p});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final T = Theme.of(context).textTheme;
    txt(String? t) => Text(t ?? "", style: T.titleMedium);
    row(Widget label, Widget content) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [label, content],
        );
    var titleStr = "픽업료 및 배송비 설정";
    if (p.shipment.amountMeasurable) {
      titleStr +=
          "(${p.shipment.amount}/${p.ioOrder.shipAmount!.pendingAmount})";
    }
    return IoCard(
      height: p.shipment.amountMeasurable ? size.height / 4.2 : size.height / 7,
      title: Text(titleStr, style: T.titleMedium),
      content: p.shipment.amountMeasurable
          ? Column(
              children: [
                row(txt("부피"), txt("${p.shipment.sizeUnit}")),
                const SizedBox(height: 10),
                row(txt("무게"), txt("${p.shipment.weightUnit}")),
              ],
            )
          : Container(),
      footer: [
        if (p.order.state == OrderState.ongoingPickup)
          ElevatedButton(
              onPressed: () {
                final appBloc = context.read<AppBloc>();
                showDialog(
                    context: context,
                    barrierDismissible: false, // close when click outside
                    builder: ((context) {
                      return ShipSpecifySelect(
                        p: p,
                        onNewShip: (ship) {
                          try {
                            appBloc.add(UpdateShip(ship: ship));
                          } on ProviderNotFoundException catch (e) {
                            debugPrint(e.toString());
                          }
                          shipRepo.api.updateShipment(ship).then((value) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text('저장완료 ${ship.shippingId}')),
                            );
                            Navigator.of(context).pop();
                          });
                        },
                      );
                    }));
              },
              child: txt("설정"))
      ],
    );
  }
}
