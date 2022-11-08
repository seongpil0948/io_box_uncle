part of '../index.dart';

class PickupDetailPage extends StatelessWidget {
  final ShipOrder p;
  const PickupDetailPage({Key? key, required this.p}) : super(key: key);
  static Page<void> page({required ShipOrder p}) =>
      MaterialPage<void>(child: PickupDetailPage(p: p));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                height: size.height / 2.5,
                title: BackButton(onPressed: () {
                  context.read<AppBloc>().add(DisSelectPickup());
                }),
                content: ShipThumb(
                    dest: p.order.isPickup
                        ? p.shipment.startAddress
                        : p.shipment.receiveAddress,
                    order: p.order),
                footer: shipStatusBtns(context, p),
              ),
              const SizedBox(height: 10),
              ShipAmountCard(p: p),
              const SizedBox(height: 10),
              // 상품명, 컬러, 사이즈, 수량
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(columns: [
                  DataColumn(label: Text(p.order.isPickup ? '도매처명' : "소매처명")),
                  const DataColumn(label: Text('상품명')),
                  const DataColumn(label: Text('컬러')),
                  const DataColumn(label: Text('사이즈')),
                  const DataColumn(label: Text('수량'), numeric: true),
                ], rows: [
                  DataRow(cells: [
                    DataCell(Text(p.order.isPickup
                        ? p.vendorUser.name
                        : p.shopUser.name)),
                    DataCell(Text(p.vendorGarment.vendorProdName)),
                    DataCell(Text(p.vendorGarment.color)),
                    DataCell(Text(p.vendorGarment.size)),
                    DataCell(Text(p.order.activeCnt.toString())),
                  ])
                ]),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class ShipAmountCard extends StatelessWidget {
  final ShipOrder p;
  const ShipAmountCard({super.key, required this.p});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final T = Theme.of(context).textTheme;
    txt(String? t) => Text(t ?? "", style: T.subtitle1);
    row(Widget label, Widget content) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [label, content],
        );
    return IoCard(
      height: p.shipment.amountMeasurable ? size.height / 5.5 : 100,
      title: txt("배송비 카드"),
      content: p.shipment.amountMeasurable
          ? Column(
              children: [
                row(txt("부피"),
                    txt("${p.shipment.size} (${p.shipment.sizeUnit})")),
                const SizedBox(height: 10),
                row(txt("무게"),
                    txt("${p.shipment.weight} (${p.shipment.weightUnit})")),
              ],
            )
          : Container(),
      footer: [
        ElevatedButton(
            onPressed: () {
              showDialog(
                      context: context,
                      barrierDismissible: false, // close when click outside
                      builder: ((context) {
                        return ShipSpecifySelect(p: p);
                      }))
                  .then((value) =>
                      context.read<AppBloc>().add(DisSelectPickup()));
            },
            child: txt("제원변경"))
      ],
    );
  }
}

class ShipSpecifySelect extends StatefulWidget {
  final ShipOrder p;
  const ShipSpecifySelect({super.key, required this.p});

  @override
  State<ShipSpecifySelect> createState() => _ShipSpecifySelectState();
}

class _ShipSpecifySelectState extends State<ShipSpecifySelect> {
  final _formKey = GlobalKey<FormState>();
  int? shipSize;
  String? shipSizeUnit;
  int? shipWeight;
  String? shipWeightUnit;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sizeUnits = widget.p.managerUser.uncleInfo?.amountBySize.keys ?? [];
    final weightUnits =
        widget.p.managerUser.uncleInfo?.amountByWeight.keys ?? [];
    assert(sizeUnits.isNotEmpty && weightUnits.isNotEmpty);
    txt(String? t) => Text(t ?? "");
    row(Widget? label, Widget? content) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [label ?? Container(), content ?? Container()],
        );
    const height = 200.0;
    final widgetW = size.width * 0.3;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.1),
      child: IoCard(
        height: size.height * 0.8,
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              row(txt("사이즈 입력"), null),
              row(
                  SizedBox(
                      width: widgetW,
                      height: height,
                      child: IntFormField(
                        onSaved: (val) {
                          shipSize = val != null ? int.parse(val) : 0;
                        },
                      )),
                  SizedBox(
                    width: widgetW + 22,
                    height: height,
                    child: DropdownButtonFormField(
                        onSaved: (newValue) {
                          shipSizeUnit = newValue as String;
                        },
                        validator: (value) =>
                            value == null ? "사이즈단위를 선택해주십시오." : null,
                        items: sizeUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 20),
                            ),
                          );
                        }).toList(),
                        onChanged: (val) {
                          debugPrint("change size: $val");
                        }),
                  )),
              row(txt("무게 입력"), null),
              row(
                  SizedBox(
                      width: widgetW,
                      height: height,
                      child: IntFormField(
                        onSaved: (val) {
                          shipWeight = val != null ? int.parse(val) : 0;
                        },
                      )),
                  SizedBox(
                    width: widgetW,
                    height: height,
                    child: DropdownButtonFormField(
                        onSaved: (newValue) {
                          shipWeightUnit = newValue as String;
                        },
                        validator: (value) =>
                            value == null ? "무게단위를 선택해주십시오." : null,
                        items: weightUnits
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 20),
                            ),
                          );
                        }).toList(),
                        onChanged: (val) {
                          debugPrint("change weight: $val");
                        }),
                  )),
            ],
          ),
        ),
        footer: [
          ElevatedButton(
            onPressed: () async {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                debugPrint(
                    "shipSize: $shipSize, shipSizeUnit: $shipSizeUnit, shipWeight: $shipWeight, shipWeightUnit: $shipWeightUnit");
                final shipment = widget.p.shipment.copyWith(
                    size: shipSize,
                    sizeUnit: shipSizeUnit,
                    weight: shipWeight,
                    weightUnit: shipWeightUnit);
                try {
                  context.read<AppBloc>().add(DisSelectPickup());
                } on ProviderNotFoundException catch (e) {}

                shipRepo.api.updateShipment(shipment).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('저장완료 ${shipment.shippingId}')),
                  );
                  Navigator.of(context).pop();
                });
              }
            },
            child: const Text('저장'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.read<AppBloc>().add(DisSelectPickup());
              },
              child: txt("닫기"))
        ],
      ),
    );
  }
}

class IntFormField extends StatelessWidget {
  final void Function(String? val) onSaved;
  const IntFormField({Key? key, required this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: onSaved,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '크기를 입력 해주세요.';
        } else if (int.tryParse(value) == null) {
          return "올바른 숫자를 입력해주세요";
        }
        return null;
      },
    );
  }
}
