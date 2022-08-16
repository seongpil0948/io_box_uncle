part of 'app_bloc.dart';

class AppState extends Equatable {
  final IoUser? user;
  final AppStatus status;
  final ModulePage? module;

  const AppState(
      {required this.user, required this.status, required this.module});
  const AppState.authenticated(IoUser u)
      : status = AppStatus.authenticated,
        user = u,
        module = null;
  const AppState.unauthenticated()
      : status = AppStatus.unauthenticated,
        user = null,
        module = null;

  AppState copyWith({
    IoUser? user,
    AppStatus? status,
    ModulePage? module,
  }) {
    return AppState(
      user: user ?? this.user,
      status: status ?? this.status,
      module: module ?? this.module,
    );
  }

  @override
  List<Object> get props => [status, user ?? "", module.toString()];
}

enum ModulePage { pickupList }
