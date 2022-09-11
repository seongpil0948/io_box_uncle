import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/module/ship/repo.dart';

import '../../auth/index.dart';
import '../model/index.dart';

part 'shipment_event.dart';
part 'shipment_state.dart';

class ShipmentBloc extends Bloc<ShipmentEvent, ShipmentState> {
  final ShipmentRepo orderRepo;
  final AuthRepo authRepo;

  ShipmentBloc({required this.orderRepo, required this.authRepo})
      : super(const ShipmentInitial()) {
    on<ShipmentEvent>(_listenAll);
    on<ShipUserChange>(_userChange);
    on<StartPickup>(startPickup);
    on<DonePickup>(_donePickup);
    on<ToBeforeShip>(_toBeforeShip);
    on<StartShip>(_startShip);
    on<DoneShip>(_doneShip);
    on<RequestTossOrder>(_reqTossOrd);

    authRepo.user.listen(
      (user) async {
        final u = await user;
        add(ShipUserChange(user: u));
      },
    );
  }

  void _listenAll(ShipmentEvent event, Emitter<ShipmentState> emit) {
    debugPrint("ship event in _listenAll: $event, emit: $emit");
  }

  Future<void> startPickup(
      StartPickup event, Emitter<ShipmentState> emit) async {
    await orderRepo.startPickup(event.shipOrder);
  }

  Future<void> _donePickup(
      DonePickup event, Emitter<ShipmentState> emit) async {
    await orderRepo.donePickup(event.shipOrder);
  }

  Future<void> _toBeforeShip(
      ToBeforeShip event, Emitter<ShipmentState> emit) async {
    await orderRepo.toBeforeShip(event.shipOrder);
  }

  Future<void> _startShip(StartShip event, Emitter<ShipmentState> emit) async {
    await orderRepo.startShip(event.shipOrder);
  }

  Future<void> _doneShip(DoneShip event, Emitter<ShipmentState> emit) async {
    await orderRepo.doneShip(event.shipOrder);
  }

  Future<void> _reqTossOrd(
      RequestTossOrder event, Emitter<ShipmentState> emit) async {
    await orderRepo.reqToss(event.s, event.targetUncleId);
  }

  void _userChange(ShipUserChange event, Emitter<ShipmentState> emit) async {
    final user = event.user;
    if (user != null) {
      assert(user.userInfo.managerId != null);
      await emit.forEach<List<ShipOrder>>(
          orderRepo.getShipmentOrders(
              user.userInfo.userId, user.userInfo.managerId!),
          onData: (orders) {
        return ShipOrderState(shipOrders: orders);
      });
    }
  }
}
