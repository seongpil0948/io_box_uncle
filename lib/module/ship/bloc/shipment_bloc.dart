import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:io_box_uncle/module/ship/repo.dart';

import '../../auth/index.dart';
import '../model/index.dart';

part 'shipment_event.dart';
part 'shipment_state.dart';

class ShipmentBloc extends Bloc<ShipmentEvent, ShipmentState> {
  final ShipmentRepo orderRepo;
  final AuthRepo authRepo;
  late Stream<List<ShipOrder>> ordStream;
  late StreamSubscription<Future<IoUser?>> userSubscription;
  late StreamSubscription<List<ShipOrder>> orderSubscription;

  ShipmentBloc({required this.orderRepo, required this.authRepo})
      : super(const ShipmentInitial()) {
    // ordStream = orderRepo.getShipmentOrders();
    userSubscription = authRepo.user.listen(
      (user) async {
        final u = await user;
        add(ShipUserChange(user: u));
      },
    );

    on<ShipmentEvent>(_listenAll);
    on<ShipUserChange>(_userChange);
    on<ShipDispose>(_dispose);
  }
  void _listenAll(ShipmentEvent event, Emitter<ShipmentState> emit) {
    debugPrint("ship event: $event, emit: $emit");
  }

  void _userChange(ShipUserChange event, Emitter<ShipmentState> emit) {
    unSubscribe();
    final user = event.user;
    if (user != null) {
      assert(user.userInfo.managerId != null);
      ordStream = orderRepo.getShipmentOrders(
          user.userInfo.userId, user.userInfo.managerId!);
      orderSubscription = ordStream.listen((event) {
        emit(ShipOrderState(shipOrders: event));
      });
    }
  }

  void _dispose(ShipDispose event, Emitter<ShipmentState> emit) {
    unSubscribe();
    userSubscription.cancel();
    emit(const ShipmentInitial());
  }

  void unSubscribe() {
    if (authRepo.currentUser != null) {
      orderSubscription.cancel();
    }
  }
}
