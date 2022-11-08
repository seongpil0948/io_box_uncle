part of '../index.dart';

class PickupDetailPage extends StatelessWidget {
  final ShipOrder p;
  const PickupDetailPage({Key? key, required this.p}) : super(key: key);
  static Page<void> page({required ShipOrder p}) =>
      MaterialPage<void>(child: PickupDetailPage(p: p));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final footer = shipStatusBtns(context, p);
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return WillPopScope(
      onWillPop: () async {
        context.read<AppBloc>().add(DisSelectPickup());
        return true;
      },
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              IoCard(
                shape: p.order.isReturn
                    ? RoundedRectangleBorder(
                        side: BorderSide(
                          color: customColors.info ?? Colors.blueAccent,
                          width: cardBorderWidth,
                        ),
                        borderRadius: cardRadius,
                      )
                    : null,
                height: size.height / 2.5,
                title: BackButton(onPressed: () {
                  context.read<AppBloc>().add(DisSelectPickup());
                }),
                content: ShipThumb(
                    isBig: true,
                    dest: p.order.isPickup
                        ? p.shipment.startAddress
                        : p.shipment.receiveAddress,
                    order: p.order),
                footer: footer,
              ),
              const SizedBox(height: 10),
              ShipAmountCard(p: p),
              const SizedBox(height: 10),
              // 상품명, 컬러, 사이즈, 수량
              ShipInfoTable(p: p),
            ],
          ),
        ),
      )),
    );
  }
}
