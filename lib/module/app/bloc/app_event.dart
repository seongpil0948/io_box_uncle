part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppLogoutRequested extends AppEvent {}

class AppUserChanged extends AppEvent {
  const AppUserChanged(this.user);

  final IoUser? user;

  @override
  List<Object> get props => [user == null ? 'null' : user!.userInfo.userId];
}

class SelectModule extends AppEvent {
  const SelectModule(this.module);

  final ModulePage? module;

  @override
  List<Object> get props => [module == null ? 'null' : module.toString()];
}

class DisSelectModule extends AppEvent {}

class SelectPickup extends AppEvent {
  final ShipOrder pickup;
  const SelectPickup({required this.pickup});

  @override
  List<Object> get props => [pickup.shipment.shippingId, pickup.order.id];
}

class DisSelectPickup extends AppEvent {}
