part of '../index.dart';

class PickupListPage extends StatelessWidget {
  PickupListPage({Key? key}) : super(key: key);
  static Page<void> page() => MaterialPage<void>(child: PickupListPage());
  final scrollController = FixedExtentScrollController();
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
            selector: (state) {
              return state.shipOrders
                  .where((element) =>
                      element.order.state == OrderState.beforePickup)
                  .toList();
            },
            builder: (context, state) {
              if (state.isNotEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BackButton(onPressed: () {
                      context.read<AppBloc>().add(DisSelectModule());
                    }),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: ListView(
                          children: state.map((e) => renderCard(e)).toList(),
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
    // child: SingleChildScrollView(
    //     child: Column(
    //   children: [
    //     Card(child: Row(children: const [Text("픽업 요청"), Text("999건")])),
    //     const Text("상세 내용"),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: const [Text("도매처명"), Text("뭉멍이네")],
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         const Text("상세정보"),
    //         Column(
    //           children: const [Text("디오트 3층 a 13"), Text("02-2117-0001")],
    //         )
    //       ],
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: const [Text("픽업 수량"), Text("15벌")],
    //     ),
    //     const Divider()
    //   ],
    // )),
  }
}
