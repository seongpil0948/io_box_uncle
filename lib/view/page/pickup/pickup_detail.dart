part of "../index.dart";

class PickupDetailPage extends StatelessWidget {
  final ShipOrder p;
  const PickupDetailPage({Key? key, required this.p}) : super(key: key);
  static Page<void> page({required ShipOrder p}) =>
      MaterialPage<void>(child: PickupDetailPage(p: p));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        context.read<AppBloc>().add(DisSelectPickup());
        return true;
      },
      child: SafeArea(
          child: Scaffold(
        body: Column(
          children: [
            IoCard(
              height: size.height / 2.5,
              title: BackButton(onPressed: () {
                context.read<AppBloc>().add(DisSelectPickup());
              }),
              content: ShipThumb(dest: p.shipment.startAddress, order: p.order),
              footer: shipStatusBtns(context, p),
            ),
            const SizedBox(height: 10),
            // 상품명, 컬러, 사이즈, 수량
            DataTable(columns: const [
              DataColumn(label: Text('도매처명')),
              DataColumn(label: Text('상품명')),
              DataColumn(label: Text('컬러')),
              DataColumn(label: Text('사이즈')),
              DataColumn(label: Text('수량'), numeric: true),
            ], rows: [
              DataRow(cells: [
                DataCell(Text(p.shopUser.name)),
                DataCell(Text(p.vendorGarment.vendorProdName)),
                DataCell(Text(p.vendorGarment.color)),
                DataCell(Text(p.vendorGarment.size)),
                DataCell(Text(p.order.activeCnt.toString())),
              ])
            ]),
          ],
        ),
      )),
    );
  }
}
