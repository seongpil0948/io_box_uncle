import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/module/auth/index.dart';

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

    _userSubscription = authRepo.user.listen((user) async {
      if (kDebugMode) {
        print("user: $user");
      }
      user.then((value) {
        if (kDebugMode) {
          print("in authRepo.user.listen: $value");
        }
        add(AppUserChanged(value));
      });
    });
  }
  void _onUserChanged(AppUserChanged event, Emitter<AppState> emit) {
    if (kDebugMode) {
      print("event.user in _onUserChanged: ${event.user}");
    }
    emit(
      event.user != null
          ? AppState.authenticated(event.user!)
          : const AppState.unauthenticated(),
    );
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(authRepo.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      print(event);
    }
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      print(error);
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      print(change);
    }
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      print(transition);
    }
  }
}

enum AppStatus {
  authenticated,
  unauthenticated,
}
