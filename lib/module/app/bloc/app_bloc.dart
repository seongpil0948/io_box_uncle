import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/module/auth/index.dart';
import 'package:io_box_uncle/module/ship/model/index.dart';
import 'package:io_box_uncle/util/logger.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AuthRepo authRepo;
  late final StreamSubscription<Future<IoUser?>> _userSubscription;
  AppBloc({required this.authRepo})
      : super(
          authRepo.currentUser != null
              ? AppState.authenticated(authRepo.currentUser!)
              : const AppState.unauthenticated(),
        ) {
    on<AppUserChanged>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);
    on<SelectModule>(_onSelectModule);
    on<DisSelectModule>(_onDisSelectModule);
    on<SelectShip>(_onSelectPickup);
    on<DisSelectPickup>(_onDisSelectPickup);

    _userSubscription = authRepo.user.listen((user) async {
      user.then((value) => add(AppUserChanged(value)));
    });
  }

  Future<void> _onUserChanged(
      AppUserChanged event, Emitter<AppState> emit) async {
    await IoLogger.log(
        IoSeverity.debug, "AppUserChanged, user: ${event.user} ");
    emit(
      event.user != null
          ? AppState.authenticated(event.user!)
          : const AppState.unauthenticated(),
    );
  }

  void _onSelectModule(SelectModule event, Emitter<AppState> emit) {
    emit(state.copyWith(module: event.module));
  }

  void _onDisSelectModule(DisSelectModule event, Emitter<AppState> emit) {
    emit(AppState(
        user: state.user,
        status: state.status,
        module: null,
        selectedShip: state.selectedShip));
  }

  void _onSelectPickup(SelectShip event, Emitter<AppState> emit) {
    emit(state.copyWith(selectedShip: event.shipOrder));
  }

  void _onDisSelectPickup(DisSelectPickup event, Emitter<AppState> emit) {
    emit(AppState(
        user: state.user,
        status: state.status,
        module: state.module,
        selectedShip: null));
  }

  Future<void> _onLogoutRequested(
      AppLogoutRequested event, Emitter<AppState> emit) async {
    await IoLogger.log(
        IoSeverity.debug, "user: ${authRepo.currentUser} AppLogoutRequested ");
    unawaited(authRepo.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}

class AppBlocObserver extends BlocObserver {
  // @override
  // void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
  //   super.onEvent(bloc, event);
  // }

  @override
  void onError(
      BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) async {
    await IoLogger.log(IoSeverity.error,
        "onError in AppBlocObserver bloc: $bloc, error: $error,  stackTrace: $stackTrace");
    super.onError(bloc, error, stackTrace);
  }

  // @override
  // void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
  //   super.onChange(bloc, change);
  // }

  // @override
  // void onTransition(
  //   Bloc<dynamic, dynamic> bloc,
  //   Transition<dynamic, dynamic> transition,
  // ) {
  //   super.onTransition(bloc, transition);
  // }
}

enum AppStatus {
  authenticated,
  unauthenticated,
}
