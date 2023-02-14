part of 'shipment_bloc.dart';

abstract class ShipmentState extends Equatable {
  const ShipmentState(
      {required this.shipOrders, required this.tossData, required this.dest});
  final List<ShipOrder> shipOrders;
  final List<ShipOrder> tossData;
  final Locate? dest;

  List<ShipOrder> get filteredShipOrders => dest != null
      ? shipOrders.where((e) => e.dest.adminArea == dest!.adminArea).toList()
      : shipOrders;
  List<ShipOrder> get filteredTossOrders => dest != null
      ? tossData.where((e) => e.dest.adminArea == dest!.adminArea).toList()
      : tossData;

  @override
  List<Object?> get props => [dest, shipOrders, tossData];
}

class ShipmentInitial extends ShipmentState {
  const ShipmentInitial()
      : super(shipOrders: const [], tossData: const [], dest: null);
}

class ShipOrderState extends ShipmentState {
  const ShipOrderState(
      {required super.shipOrders,
      required super.tossData,
      required super.dest});
}
