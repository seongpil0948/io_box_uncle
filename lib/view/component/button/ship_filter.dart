part of "./index.dart";

class ShipLocateFilter extends StatelessWidget {
  const ShipLocateFilter({super.key});

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      )),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.4,
          maxChildSize: 0.9,
          minChildSize: 0.32,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: const _ShipLocateOptionScreen(),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _showModalBottomSheet(context),
      child: BlocSelector<ShipmentBloc, ShipmentState, Locate?>(
          selector: (state) => state.dest,
          builder: (context, state) {
            return Text(state == null ? "지역필터" : state.adminArea);
          }),
    );
  }
}

class _ShipLocateOptionScreen extends StatelessWidget {
  const _ShipLocateOptionScreen();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
            top: -15,
            child: Container(
              width: 60,
              height: 7,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
            )),
        BlocBuilder<ShipmentBloc, ShipmentState>(builder: (context, state) {
          List<Locate> targets = [];
          final orders = [...state.shipOrders, ...state.tossData];
          for (var i = 0; i < orders.length; i++) {
            final order = orders[i];
            if (!targets.contains(order.dest)) {
              targets.add(order.dest);
            }
          }

          return Column(mainAxisSize: MainAxisSize.min, children: [
            InkWell(
              splashColor: Colors.grey.shade300,
              onTap: () {
                context.read<ShipmentBloc>().add(FilterByLocate(dest: null));
                Navigator.pop(context);
              },
              child: const ListTile(
                // leading: new Icon(Icons.photo),
                title: Text("초기화"),
              ),
            ),
            ...targets
                .map((e) => InkWell(
                      splashColor: Colors.grey.shade300,
                      onTap: () {
                        context
                            .read<ShipmentBloc>()
                            .add(FilterByLocate(dest: e));
                        Navigator.pop(context);
                      },
                      child: ListTile(
                        // leading: new Icon(Icons.photo),
                        title: Text(e.adminArea),
                      ),
                    ))
                .toList()
          ]);
        })
      ],
    );
  }
}
