import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/config/index.dart';
import 'package:io_box_uncle/module/app/bloc/app_bloc.dart';
import 'package:io_box_uncle/module/ship/model/index.dart';
import 'package:io_box_uncle/view/component/card/common.dart';

class ShipListExpand extends StatefulWidget {
  const ShipListExpand({super.key, required this.orders});
  final Iterable<ShipOrder> orders;

  @override
  State<ShipListExpand> createState() => _ShipListExpandState();
}

class _ShipListExpandState extends State<ShipListExpand> {
  late final List<LocateItems> _data;
  @override
  void initState() {
    super.initState();
    _data = _ordToItems(widget.orders);
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((LocateItems item) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.locateAlias),
            );
          },
          body: Column(
            children: item.items.map((e) => _ShipCard(s: e)).toList(),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

List<LocateItems> _ordToItems(Iterable<ShipOrder> orders) {
  var obj = <String, List<ShipOrder>>{};
  for (var e in orders) {
    if (obj.containsKey(e.dest.alias)) {
      obj[e.dest.alias]!.add(e);
    } else {
      obj[e.dest.alias] = [e];
    }
  }
  return obj.entries
      .map((e) => LocateItems(locateAlias: e.key, items: e.value))
      .toList();
}

// stores ExpansionPanel state information
class LocateItems {
  LocateItems({
    required this.items,
    required this.locateAlias,
    this.isExpanded = false,
  });

  List<ShipOrder> items;
  String locateAlias;
  bool isExpanded;
}

class _ShipCard extends StatelessWidget {
  final ShipOrder s;
  const _ShipCard({required this.s});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final itemHeight = size.height / 6;
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return Center(
      child: InkWell(
        onTap: () {
          context.read<AppBloc>().add(SelectShip(shipOrder: s));
        },
        child: Container(
          margin: const EdgeInsets.all(8.0),
          width: size.width / 1.2,
          height: itemHeight,
          child: Card(
            shape: s.order.isReturn
                ? RoundedRectangleBorder(
                    side: BorderSide(
                      color: customColors.info ?? Colors.blueAccent,
                      width: cardBorderWidth,
                    ),
                    borderRadius: cardRadius,
                  )
                : null,
            child: ShipThumb(
              isBig: false,
              dest: s.dest,
              order: s.order,
              shopUser: s.shopUser,
              vendorUser: s.vendorUser,
            ),
          ),
        ),
      ),
    );
  }
}
