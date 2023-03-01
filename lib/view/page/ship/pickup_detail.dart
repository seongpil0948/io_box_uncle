part of '../index.dart';

class PickupDetailPage extends StatelessWidget {
  const PickupDetailPage({Key? key}) : super(key: key);
  static Page<void> page() =>
      const MaterialPage<void>(child: PickupDetailPage());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return WillPopScope(
      onWillPop: () async {
        context.read<AppBloc>().add(DisSelectPickup());
        return true;
      },
      child: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: BlocSelector<AppBloc, AppState, ShipOrder?>(
              selector: (state) => state.selectedShip,
              builder: (context, state) {
                if (state == null) return Container();
                final footer = shipStatusBtns(context, state);
                return Column(
                  children: [
                    IoCard(
                      shape: state.order.isReturn
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
                        dest: state.dest,
                        order: state.order,
                        shopUser: state.shopUser,
                        vendorUser: state.vendorUser,
                      ),
                      footer: footer,
                    ),
                    const SizedBox(height: 10),
                    ShipAmountCard(p: state),
                    const SizedBox(height: 10),
                    // 상품명, 컬러, 사이즈, 수량
                    ShipInfoTable(p: state),
                  ],
                );
              }),
        ),
      )),
    );
  }
}
