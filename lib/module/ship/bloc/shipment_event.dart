part of 'shipment_bloc.dart';

abstract class ShipmentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ShipUserChange extends ShipmentEvent {
  final IoUser? user;
  ShipUserChange({required this.user});
}

class StartPickup extends ShipmentEvent {
  final ShipOrder shipOrder;
  StartPickup({required this.shipOrder});
}

class DonePickup extends ShipmentEvent {
  final ShipOrder shipOrder;
  DonePickup({required this.shipOrder});
}

class ToBeforeShip extends ShipmentEvent {
  final ShipOrder shipOrder;
  ToBeforeShip({required this.shipOrder});
}

class StartShip extends ShipmentEvent {
  final ShipOrder shipOrder;
  StartShip({required this.shipOrder});
}

class DoneShip extends ShipmentEvent {
  final ShipOrder shipOrder;
  DoneShip({required this.shipOrder});
}

class RequestTossOrder extends ShipmentEvent {
  final ShipOrder s;
  final String targetUncleId;
  RequestTossOrder({required this.targetUncleId, required this.s});
}
