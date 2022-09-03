part of '../index.dart';

class PickupListPage extends StatefulWidget {
  PickupListPage({super.key});
  static Page<void> page() => MaterialPage<void>(child: PickupListPage());
  final scrollController = FixedExtentScrollController();

  @override
  State<PickupListPage> createState() => _PickupListPageState();
}

class _PickupListPageState extends State<PickupListPage>
    with AutomaticKeepAliveClientMixin<PickupListPage> {
  final views = [
    {"state": OrderState.beforePickup, "name": "픽업전"},
    {"state": OrderState.ongoingPickup, "name": "픽업중"},
    {"state": OrderState.pickupComplete, "name": "픽업완료"},
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final T = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final itemHeight = size.height / 5;

    Widget renderCard(ShipOrder s) {
      final dest = s.shipment.startAddress;
      return Center(
        child: InkWell(
          onTap: () {
            context.read<AppBloc>().add(SelectPickup(pickup: s));
          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            width: size.width / 1.2,
            height: itemHeight,
            child: Card(
              child: ShipThumb(dest: dest, order: s.order),
            ),
          ),
        ),
      );
    }

    Widget rendorView(OrderState ordState, String name) {
      return BlocSelector<ShipmentBloc, ShipmentState, List<ShipOrder>>(
        selector: (state) => state.shipOrders,
        builder: (context, state) {
          if (state.isNotEmpty) {
            return ListView(
              children: state
                  .where((element) {
                    return element.order.state == ordState;
                  })
                  .map((e) => renderCard(e))
                  .toList(),
            );
          } else {
            return Center(
                child: Text(
              "픽업 데이터가 없습니다.",
              style: T.headline5,
            ));
          }
        },
      );
    }

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
              title: const Text("픽업요청"),
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
            ),
            body: Container(
              padding: const EdgeInsets.only(top: 8),
              height: MediaQuery.of(context).size.height * 0.75,
              child: TabBarView(
                  children: views
                      .map((e) => rendorView(
                          e["state"] as OrderState, e["name"] as String))
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
