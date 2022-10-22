part of 'app_bloc.dart';

class AppState extends Equatable {
  final IoUser? user;
  final AppStatus status;
  final ModulePage? module;
  final ShipOrder? selectedShip;

  const AppState(
      {this.selectedShip,
      required this.user,
      required this.status,
      required this.module});
  const AppState.authenticated(IoUser u)
      : status = AppStatus.authenticated,
        user = u,
        module = null,
        selectedShip = null;
  const AppState.unauthenticated()
      : status = AppStatus.unauthenticated,
        user = null,
        module = null,
        selectedShip = null;

  AppState copyWith({
    IoUser? user,
    AppStatus? status,
    ModulePage? module,
    ShipOrder? selectedShip,
  }) {
    return AppState(
        user: user ?? this.user,
        status: status ?? this.status,
        module: module ?? this.module,
        selectedShip: selectedShip ?? this.selectedShip);
  }

  @override
  List<Object> get props => [
        status,
        user ?? "",
        module ?? "",
        selectedShip ?? "",
      ];
}

enum ModulePage { pickupList, shipList, tossList }
