part of '../index.dart';

class PickupListPage extends StatefulWidget {
  PickupListPage({super.key});
  static Page<void> page() => MaterialPage<void>(child: PickupListPage());
  final scrollController = FixedExtentScrollController();

  @override
  State<PickupListPage> createState() => _PickupListPageState();
}

class _PickupListPageState extends State<PickupListPage> {
  OrderState? _orderState = OrderState.beforePickup;

  @override
  Widget build(BuildContext context) {
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
          child: SizedBox(
            width: size.width / 1.2,
            height: itemHeight,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        dest.adminArea,
                        style: T.headline6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            dest.detailLocate ?? "",
                            style: T.subtitle1,
                          ),
                          Badge(
                            badgeContent: Text(s.order.activeCnt.toString()),
                            child: const Icon(Icons.local_shipping_outlined),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ),
      );
    }

    return WillPopScope(
      onWillPop: () async {
        context.read<AppBloc>().add(DisSelectModule());
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: BlocSelector<ShipmentBloc, ShipmentState, List<ShipOrder>>(
            selector: (state) => state.shipOrders,
            builder: (context, state) {
              if (state.isNotEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(onPressed: () {
                          context.read<AppBloc>().add(DisSelectModule());
                        }),
                        DropdownButton<OrderState>(
                          items: const [
                            DropdownMenuItem(
                                value: OrderState.beforePickup,
                                child: Text("픽업전")),
                            DropdownMenuItem(
                                value: OrderState.ongoingPickup,
                                child: Text("픽업중")),
                            DropdownMenuItem(
                                value: OrderState.pickupComplete,
                                child: Text("픽업완료")),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _orderState = value;
                            });
                          },
                        )
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: ListView(
                          children: state
                              .where((element) {
                                if (_orderState == null) return true;
                                return element.order.state == _orderState;
                              })
                              .map((e) => renderCard(e))
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Center(
                    child: Text(
                  "픽업 데이터가 없습니다.",
                  style: T.headline5,
                ));
              }
            },
          ),
        ),
      ),
    );
  }
}
