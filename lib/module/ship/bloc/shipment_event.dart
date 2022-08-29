part of 'shipment_bloc.dart';

abstract class ShipmentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ShipUserChange extends ShipmentEvent {
  final IoUser? user;
  ShipUserChange({required this.user});
}
