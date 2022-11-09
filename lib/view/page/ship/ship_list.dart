part of "../index.dart";

class ShipListPage extends StatefulWidget {
  ShipListPage({super.key});
  static Page<void> page() => MaterialPage<void>(child: ShipListPage());
  final scrollController = FixedExtentScrollController();

  @override
  State<ShipListPage> createState() => _ShipListPageState();
}

class _ShipListPageState extends State<ShipListPage>
    with AutomaticKeepAliveClientMixin<ShipListPage> {
  final views = [
    {"state": OrderState.beforeShip, "name": "배송전"},
    {"state": OrderState.shipping, "name": "배송중"},
    {"state": OrderState.shippingComplete, "name": "배송완료"},
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return WillPopScope(
      onWillPop: () async {
        context.read<AppBloc>().add(DisSelectModule());
        return true;
      },
      child: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              leading: BackButton(onPressed: () {
                context.read<AppBloc>().add(DisSelectModule());
              }),
              title: const Text("배송관리"),
              bottom: TabBar(
                // isScrollable: true,
                // indicator:
                //     BoxDecoration(borderRadius: BorderRadius.circular(50)),
                tabs: [
                  for (int i = 0; i < views.length; i++)
                    Tab(
                      text: views[i]["name"] as String,
                    )
                ],
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ShipLocateFilter(),
                )
              ],
            ),
            body: Container(
              padding: const EdgeInsets.only(top: 8),
              height: MediaQuery.of(context).size.height * 0.75,
              child: TabBarView(
                  children: views
                      .map((e) => _ShipListView(
                          ordState: e["state"] as OrderState,
                          name: e["name"] as String))
                      .toList()),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
