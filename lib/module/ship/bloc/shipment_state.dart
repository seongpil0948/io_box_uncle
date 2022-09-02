part of 'shipment_bloc.dart';

abstract class ShipmentState extends Equatable {
  const ShipmentState({required this.shipOrders});
  final List<ShipOrder> shipOrders;

  @override
  List<Object> get props => [shipOrders];
}

class ShipmentInitial extends ShipmentState {
  const ShipmentInitial() : super(shipOrders: const []);
}

class ShipOrderState extends ShipmentState {
  const ShipOrderState({required super.shipOrders});
}
