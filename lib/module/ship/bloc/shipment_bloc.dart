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

    authRepo.user.listen(
      (user) async {
        final u = await user;
        add(ShipUserChange(user: u));
      },
    );
  }

  void _listenAll(ShipmentEvent event, Emitter<ShipmentState> emit) {
    debugPrint("ship event: $event, emit: $emit");
  }

  void _userChange(ShipUserChange event, Emitter<ShipmentState> emit) async {
    final user = event.user;
    if (user != null) {
      assert(user.userInfo.managerId != null);
      await emit.forEach<List<ShipOrder>>(
          orderRepo.getShipmentOrders(
              user.userInfo.userId, user.userInfo.managerId!),
          onData: (orders) => ShipOrderState(shipOrders: orders));
    }
  }
}
