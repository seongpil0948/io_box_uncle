part of "./common.dart";

class ShipThumb extends StatelessWidget {
  const ShipThumb({
    Key? key,
    required this.dest,
    required this.order,
    required this.isBig,
  }) : super(key: key);

  final Locate dest;
  final ProdOrder order;
  final bool isBig;

  @override
  Widget build(BuildContext context) {
    final T = Theme.of(context).textTheme;
    txt(String? t) => Text(t ?? "", style: T.subtitle1);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            txt("도매처명"),
            txt((dest.firstName ?? "") + (dest.lastName ?? "")),
          ],
        ),
        if (isBig)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              txt("번호"),
              txt(dest.phone),
            ],
          ),
        if (isBig)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              txt("간이주소"),
              txt(dest.adminArea),
            ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            txt(order.isPickup ? "픽업주소" : "배송주소"),
            txt(dest.detailLocate),
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
    txt(String? t) => Text(t ?? "", style: T.subtitle1);
    row(Widget label, Widget content) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [label, content],
        );
    return IoCard(
      height: p.shipment.amountMeasurable ? size.height / 5.5 : size.height / 8,
      title: Text("배송비 카드", style: T.titleMedium),
      content: p.shipment.amountMeasurable
          ? Column(
              children: [
                row(txt("부피"),
                    txt("${p.shipment.size} (${p.shipment.sizeUnit})")),
                const SizedBox(height: 10),
                row(txt("무게"),
                    txt("${p.shipment.weight} (${p.shipment.weightUnit})")),
              ],
            )
          : Container(),
      footer: [
        ElevatedButton(
            onPressed: () {
              showDialog(
                      context: context,
                      barrierDismissible: false, // close when click outside
                      builder: ((context) {
                        return ShipSpecifySelect(p: p);
                      }))
                  .then((value) =>
                      context.read<AppBloc>().add(DisSelectPickup()));
            },
            child: txt("제원변경"))
      ],
    );
  }
}
