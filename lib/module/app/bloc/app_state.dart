part of 'app_bloc.dart';

class AppState extends Equatable {
  final IoUser? user;
  final AppStatus status;

  const AppState.authenticated(IoUser u)
      : status = AppStatus.authenticated,
        user = u;
  const AppState.unauthenticated()
      : status = AppStatus.unauthenticated,
        user = null;

  @override
  List<Object> get props => [status, user ?? ""];
}
