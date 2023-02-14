part of "./common.dart";

class ShipThumb extends StatelessWidget {
  const ShipThumb({
    Key? key,
    required this.dest,
    required this.order,
    required this.isBig,
  }) : super(key: key);

  final Locate dest;
  final OrderItem order;
  final bool isBig;

  @override
  Widget build(BuildContext context) {
    final T = Theme.of(context).textTheme;
    txt(String? t) => Text(
          t ?? "",
          overflow: TextOverflow.ellipsis,
          style: T.titleMedium,
        );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            txt(order.isPickup
                ? order.isReturn
                    ? "소매처명"
                    : "도매처명"
                : order.isReturn
                    ? "도매처명"
                    : "소매처명"),
            txt((dest.firstName ?? "") + (dest.lastName ?? "")),
          ],
        ),
        if (isBig)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              txt("연락처"),
              txt(dest.phone),
            ],
          ),
        if (isBig)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              txt("주소지"),
              txt(dest.adminArea),
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

class ShipAmountCard extends StatefulWidget {
  ShipOrder p;
  ShipAmountCard({super.key, required this.p});

  @override
  State<ShipAmountCard> createState() => _ShipAmountCardState();
}

class _ShipAmountCardState extends State<ShipAmountCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final T = Theme.of(context).textTheme;
    txt(String? t) => Text(t ?? "", style: T.titleMedium);
    row(Widget label, Widget content) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [label, content],
        );
    return IoCard(
      height: widget.p.shipment.amountMeasurable
          ? size.height / 4.2
          : size.height / 6,
      title: Text("픽업료 및 배송비 설정", style: T.titleMedium),
      content: widget.p.shipment.amountMeasurable
          ? Column(
              children: [
                row(txt("부피"), txt("${widget.p.shipment.sizeUnit}")),
                const SizedBox(height: 10),
                row(txt("무게"), txt("${widget.p.shipment.weightUnit}")),
              ],
            )
          : Container(),
      footer: [
        if (widget.p.order.state == OrderState.ongoingPickup)
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false, // close when click outside
                    builder: ((context) {
                      return ShipSpecifySelect(
                        p: widget.p,
                        onNewShip: (ship) {
                          try {
                            context.read<AppBloc>().add(DisSelectPickup());
                          } on ProviderNotFoundException catch (e) {
                            debugPrint(e.toString());
                          }
                          shipRepo.api.updateShipment(ship).then((value) {
                            setState(() {
                              widget.p = widget.p.copyWith(shipment: ship);
                            });
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
