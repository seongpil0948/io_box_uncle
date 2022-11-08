part of "./index.dart";

class ShipInfoTable extends StatelessWidget {
  const ShipInfoTable({
    Key? key,
    required this.p,
  }) : super(key: key);

  final ShipOrder p;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(columns: [
        DataColumn(label: Text(p.order.isPickup ? '도매처명' : "소매처명")),
        const DataColumn(label: Text('상품명')),
        const DataColumn(label: Text('컬러')),
        const DataColumn(label: Text('사이즈')),
        const DataColumn(label: Text('수량'), numeric: true),
      ], rows: [
        DataRow(cells: [
          DataCell(
              Text(p.order.isPickup ? p.vendorUser.name : p.shopUser.name)),
          DataCell(Text(p.vendorGarment.vendorProdName)),
          DataCell(Text(p.vendorGarment.color)),
          DataCell(Text(p.vendorGarment.size)),
          DataCell(Text(p.order.activeCnt.toString())),
        ])
      ]),
    );
  }
}
