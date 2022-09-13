import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/module/ship/repo.dart';
import 'package:io_box_uncle/util/common/index.dart';
import 'package:io_box_uncle/util/logger.dart';

import '../../auth/index.dart';
import '../model/index.dart';

part 'shipment_event.dart';
part 'shipment_state.dart';

class ShipmentBloc extends Bloc<ShipmentEvent, ShipmentState> {
  final ShipmentRepo orderRepo;
  final AuthRepo authRepo;

  ShipmentBloc({required this.orderRepo, required this.authRepo})
      : super(const ShipmentInitial()) {
    // on<ShipmentEvent>(_listenAll);
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

  // void _listenAll(ShipmentEvent event, Emitter<ShipmentState> emit) {
  //   debugPrint("ship event in _listenAll: $event, emit: $emit");
  // }

  Future<void> startPickup(
      StartPickup event, Emitter<ShipmentState> emit) async {
    final s = event.shipOrder;
    await orderRepo.startPickup(s);
    sendAlarm(AlarmParam(
      toUserIds: [s.order.vendorId, s.order.shopId],
      subject: "inoutbox 주문 처리내역 알림.",
      body: "픽업을 시작 하였습니다. ",
      notiLoadUri: "/",
      uriArgs: {},
    ));
    await IoLogger.log(IoSeverity.info, "pickup start: $s");
  }

  Future<void> _donePickup(
      DonePickup event, Emitter<ShipmentState> emit) async {
    final s = event.shipOrder;
    await orderRepo.donePickup(s);
    sendAlarm(AlarmParam(
      toUserIds: [s.order.vendorId, s.order.shopId],
      subject: "inoutbox 주문 처리내역 알림.",
      body: "픽업을 완료 했습니다.",
      notiLoadUri: "/",
      uriArgs: {},
    ));
    await IoLogger.log(IoSeverity.info, "pickup done: $s");
  }

  Future<void> _toBeforeShip(
      ToBeforeShip event, Emitter<ShipmentState> emit) async {
    final s = event.shipOrder;
    await orderRepo.toBeforeShip(s);
    sendAlarm(AlarmParam(
      toUserIds: [s.order.vendorId, s.order.shopId],
      subject: "inoutbox 주문 처리내역 알림.",
      body: "배송을 준비 중 입니다.",
      notiLoadUri: "/",
      uriArgs: {},
    ));
    await IoLogger.log(IoSeverity.info, "to before ship: $s");
  }

  Future<void> _startShip(StartShip event, Emitter<ShipmentState> emit) async {
    final s = event.shipOrder;
    await orderRepo.startShip(s);
    sendAlarm(AlarmParam(
      toUserIds: [s.order.vendorId, s.order.shopId],
      subject: "inoutbox 주문 처리내역 알림.",
      body: "배송을 시작 하였습니다.",
      notiLoadUri: "/",
      uriArgs: {},
    ));
    await IoLogger.log(IoSeverity.info, "start ship: $s");
  }

  Future<void> _doneShip(DoneShip event, Emitter<ShipmentState> emit) async {
    final s = event.shipOrder;
    await orderRepo.doneShip(s);
    sendAlarm(AlarmParam(
      toUserIds: [s.order.vendorId, s.order.shopId],
      subject: "inoutbox 주문 처리내역 알림.",
      body: "배송을 완료 하였습니다.",
      notiLoadUri: "/",
      uriArgs: {},
    ));
    await IoLogger.log(IoSeverity.info, "done ship: $s");
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
