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
