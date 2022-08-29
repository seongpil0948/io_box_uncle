part of './index.dart';

class ReqPickupPage extends StatelessWidget {
  const ReqPickupPage({Key? key}) : super(key: key);
  static Page<void> page() => const MaterialPage<void>(child: ReqPickupPage());

  @override
  Widget build(BuildContext context) {
    final T = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    Widget renderCard(ShipOrder s) {
      final dest = s.shipment.startAddress;
      return Center(
        child: SizedBox(
          width: size.width / 1.5,
          height: size.height / 5,
          child: InkWell(
            onTap: () => {debugPrint("On tab ${s.shipment.shippingId}")},
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

    return Scaffold(
      body: SafeArea(
        child: BlocSelector<ShipmentBloc, ShipmentState, List<ShipOrder>>(
          selector: (state) {
            return state.shipOrders
                .where(
                    (element) => element.order.state == OrderState.beforePickup)
                .toList();
          },
          builder: (context, state) {
            return ListWheelScrollView(
              itemExtent: 100,
              // diameterRatio: 1.6,
              // squeeze: 0.8,
              clipBehavior: Clip.antiAlias,
              children: <Widget>[
                for (var i = 0; i < state.length; i++) renderCard(state[i]),
                for (var i = 0; i < state.length; i++) renderCard(state[i]),
                for (var i = 0; i < state.length; i++) renderCard(state[i]),
                for (var i = 0; i < state.length; i++) renderCard(state[i]),
                for (var i = 0; i < state.length; i++) renderCard(state[i]),
                for (var i = 0; i < state.length; i++) renderCard(state[i]),
                for (var i = 0; i < state.length; i++) renderCard(state[i]),
              ],
            );
          },
        ),
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
      ),
    );
  }
}
