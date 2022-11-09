part of "../index.dart";

class TossListPage extends StatefulWidget {
  const TossListPage({super.key});
  static Page<void> page() => const MaterialPage<void>(child: TossListPage());

  @override
  State<TossListPage> createState() => _TossListPageState();
}

class _TossListPageState extends State<TossListPage> {
  @override
  Widget build(BuildContext context) {
    final T = Theme.of(context).textTheme;
    return WillPopScope(
      onWillPop: () async {
        context.read<AppBloc>().add(DisSelectModule());
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(onPressed: () {
              context.read<AppBloc>().add(DisSelectModule());
            }),
            title: const Text("토스요청목록"),
          ),
          body: Container(
            padding: const EdgeInsets.only(top: 8),
            height: MediaQuery.of(context).size.height * 0.75,
            child: BlocSelector<ShipmentBloc, ShipmentState, List<ShipOrder>>(
              selector: (state) => state.filteredTossOrders,
              builder: (context, state) {
                if (state.isNotEmpty) {
                  return Align(
                    alignment: Alignment.topCenter,
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('주소')),
                        DataColumn(label: Text('요청시간')),
                        DataColumn(label: Text('토스받기')),
                      ],
                      rows: state.map((e) {
                        final td = e.garmentOrder.tossDate;
                        return DataRow(cells: [
                          DataCell(
                              Text(e.shipment.startAddress.detailLocate ?? "")),
                          DataCell(Text(td != null
                              ? "${td.month}월${td.day}일 ${td.hour}:${td.minute}"
                              : "-")),
                          DataCell(ElevatedButton(
                              onPressed: () {
                                showConfirmClose(context, () {
                                  context
                                      .read<ShipmentBloc>()
                                      .add(ReceiveTossOrder(s: e));
                                  context
                                      .read<AppBloc>()
                                      .add(DisSelectModule());
                                }, "해당 배송건을 맡으시겠습니까?");
                              },
                              child: const Text("받기"))),
                        ]);
                      }).toList(),
                    ),
                  );
                } else {
                  return Center(
                      child: Text(
                    "데이터가 없습니다.",
                    style: T.headline5,
                  ));
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
