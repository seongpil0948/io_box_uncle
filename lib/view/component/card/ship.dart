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
            txt("도매처"),
            txt((dest.firstName ?? "") + (dest.lastName ?? "")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            txt("상세"),
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
