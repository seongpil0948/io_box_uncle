part of "./index.dart";

class ShipSpecifySelect extends StatefulWidget {
  final ShipOrder p;
  final void Function(Shipment ship) onNewShip;
  const ShipSpecifySelect(
      {super.key, required this.p, required this.onNewShip});

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

    final amountBySize =
        widget.p.managerUser.uncleInfo?.amountBySize.entries.toList();
    amountBySize?.sort((a, b) => a.value.compareTo(b.value));
    final sizeUnits = amountBySize?.map((e) => e.key) ?? [];

    final amountByWeight =
        widget.p.managerUser.uncleInfo?.amountByWeight.entries.toList();
    amountByWeight?.sort((a, b) => a.value.compareTo(b.value));
    final weightUnits = amountByWeight?.map((e) => e.key) ?? [];

    assert(sizeUnits.isNotEmpty && weightUnits.isNotEmpty);
    txt(String? t) => Text(t ?? "");
    const height = 100.0;
    final widgetW = size.width * 0.3;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.2),
      child: IoCard(
        height: size.height * 0.5,
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              txt("사이즈 선택"),
              // SizedBox(
              //     width: widgetW,
              //     height: height,
              //     child: IntFormField(
              //       onSaved: (val) {
              //         shipSize = val != null ? int.parse(val) : 0;
              //       },
              //     )),
              SizedBox(
                width: widgetW + 22,
                height: height,
                child: DropdownButtonFormField(
                    onSaved: (newValue) {
                      shipSizeUnit = newValue as String;
                    },
                    validator: (value) =>
                        value == null ? "사이즈단위를 선택해주십시오." : null,
                    selectedItemBuilder: (BuildContext context) {
                      return sizeUnits.map<Widget>((String value) {
                        return Container(
                            alignment: Alignment.center,
                            width: widgetW - 5,
                            child: Text(
                              value,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 20),
                            ));
                      }).toList();
                    },
                    items:
                        sizeUnits.map<DropdownMenuItem<String>>((String value) {
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
              ),
              txt("무게 선택"),
              // SizedBox(
              //     width: widgetW,
              //     height: height,
              //     child: IntFormField(
              //       onSaved: (val) {
              //         shipWeight = val != null ? int.parse(val) : 0;
              //       },
              //     )),
              SizedBox(
                width: widgetW + 22,
                height: height,
                child: DropdownButtonFormField(
                    onSaved: (newValue) {
                      shipWeightUnit = newValue as String;
                    },
                    validator: (value) =>
                        value == null ? "무게단위를 선택해주십시오." : null,
                    selectedItemBuilder: (BuildContext context) {
                      return weightUnits.map<Widget>((String value) {
                        return Container(
                            alignment: Alignment.center,
                            width: widgetW - 5,
                            child: Text(
                              value,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 20),
                            ));
                      }).toList();
                    },
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
              ),
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
                    // size: shipSize,
                    size: 1,
                    sizeUnit: shipSizeUnit,
                    amountBySize: widget
                        .p.managerUser.uncleInfo?.amountBySize[shipSizeUnit],
                    // weight: shipWeight,
                    weight: 1,
                    weightUnit: shipWeightUnit,
                    amountByWeight: widget.p.managerUser.uncleInfo
                        ?.amountByWeight[shipWeightUnit]);
                widget.onNewShip(shipment);
              }
            },
            child: const Text('적용'),
          ),
          ElevatedButton(
              onPressed: () {
                // context.read<AppBloc>().add(DisSelectPickup());
                Navigator.of(context).pop();
              },
              child: txt("닫기"))
        ],
      ),
    );
  }
}
