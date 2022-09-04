part of "./common.dart";

class ShipThumb extends StatelessWidget {
  const ShipThumb({
    Key? key,
    required this.dest,
    required this.order,
  }) : super(key: key);

  final Locate dest;
  final ProdOrder order;

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
            txt("수령인"),
            txt((dest.firstName ?? "") + (dest.lastName ?? "")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            txt("번호"),
            txt(dest.phone),
          ],
        ),
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
            txt("상세주소"),
            txt(dest.detailLocate),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            txt("픽업수량"),
            txt("${order.activeCnt}벌"),
          ],
        )
      ]),
    );
  }
}
