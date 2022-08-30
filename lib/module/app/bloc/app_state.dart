part of 'app_bloc.dart';

class AppState extends Equatable {
  final IoUser? user;
  final AppStatus status;
  final ModulePage? module;
  final ShipOrder? selectedPickup;

  const AppState(
      {this.selectedPickup,
      required this.user,
      required this.status,
      required this.module});
  const AppState.authenticated(IoUser u)
      : status = AppStatus.authenticated,
        user = u,
        module = null,
        selectedPickup = null;
  const AppState.unauthenticated()
      : status = AppStatus.unauthenticated,
        user = null,
        module = null,
        selectedPickup = null;

  AppState copyWith({
    IoUser? user,
    AppStatus? status,
    ModulePage? module,
    ShipOrder? selectedPickup,
  }) {
    return AppState(
        user: user ?? this.user,
        status: status ?? this.status,
        module: module ?? this.module,
        selectedPickup: selectedPickup ?? this.selectedPickup);
  }

  @override
  List<Object> get props =>
      [status, user ?? "", module.toString(), selectedPickup ?? ""];
}

enum ModulePage { pickupList }
