part of 'shipment_bloc.dart';

abstract class ShipmentState extends Equatable {
  const ShipmentState({required this.shipOrders, required this.tossData});
  final List<ShipOrder> shipOrders;
  final List<ShipOrder> tossData;

  @override
  List<Object> get props => [shipOrders];
}

class ShipmentInitial extends ShipmentState {
  const ShipmentInitial() : super(shipOrders: const [], tossData: const []);
}

class ShipOrderState extends ShipmentState {
  const ShipOrderState({required super.shipOrders, required super.tossData});
}
