import 'dart:async';

import 'package:io_box_uncle/module/auth/index.dart';
import 'package:io_box_uncle/module/product/index.dart';

import 'api/domain.dart';
import 'model/index.dart';

class ShipmentRepo {
  final ShipmentApi api;
  const ShipmentRepo({required this.api});
  Future<void> startPickup(ShipOrder s) async {
    await api.startPickup(s);
  }

  Future<void> donePickup(ShipOrder s) async {
    await api.donePickup(s);
  }

  Future<void> toBeforeShip(ShipOrder s) async {
    await api.toBeforeShip(s);
  }

  Future<void> startShip(ShipOrder s) async {
    await api.startShip(s);
  }

  Future<void> doneShip(ShipOrder s) async {
    await api.doneShip(s);
  }

  Future<void> reqToss(ShipOrder s, String targetUncleId) async {
    await api.reqToss(s, targetUncleId);
  }

  Stream<List<ShipOrder>> getShipmentOrders(
      String userId, String shipManagerId) {
    late StreamController<List<ShipOrder>> controller;
    List<ShipOrder> data = [];
    List<Shipment> shipments = [];
    List<GarmentOrder> orders = [];
    Map<String, IoUser> users = {};
    final shipStream = api.getShipmentStream(shipManagerId);
    final orderStream = api.getOrderStream(userId, shipManagerId);

    void trigger() async {
      data = [];
      for (var i = 0; i < orders.length; i++) {
        var order = orders[i];
        for (var ord in order.items) {
          final ships = shipments.where(
            (x) => x.shippingId == ord.shipmentId,
          );
          assert(ships.length == 1);
          final ship = ships.first;
          data.add(ShipOrder(
              order: ord,
              shipment: ship,
              garmentOrder: order,
              vendorGarment: await ProdRepo.getVendorProdById(ord.vendorProdId),
              shopUser: users[ord.shopId]!,
              vendorUser: users[ord.vendorId]!,
              managerUser: users[order.shipManagerId]!));
        }
      }

      controller.add(data);
    }

    final shipSubscribe = shipStream.listen((event) {
      shipments = [];
      if (event.docs.isEmpty) return;
      for (var element in event.docs) {
        if (element.exists) {
          final shipment =
              Shipment.fromJson(element.data() as Map<String, Object?>);
          if (shipment.uncleId == userId) {
            shipments.add(shipment);
          }
        }
      }
      if (orders.isNotEmpty) {
        trigger();
      }
    });

    final orderSubscribe = orderStream.listen((event) async {
      orders = [];
      if (event.docs.isEmpty) return;
      for (var element in event.docs) {
        if (element.exists) {
          final ord =
              GarmentOrder.fromJson(element.data() as Map<String, Object?>);
          orders.add(ord);
          if (!users.containsKey(ord.shopId)) {
            users[ord.shopId] = await AuthRepo.getUserById(ord.shopId);
          }
          if (!users.containsKey(ord.shipManagerId)) {
            users[ord.shipManagerId] =
                await AuthRepo.getUserById(ord.shipManagerId);
          }
          for (var vendorId in ord.vendorIds) {
            if (!users.containsKey(vendorId)) {
              users[vendorId] = await AuthRepo.getUserById(vendorId);
            }
          }
        }
      }
      if (shipments.isNotEmpty) {
        trigger();
      }
    });

    void dispose() {
      controller.close();
      shipSubscribe.cancel();
      orderSubscribe.cancel();
    }

    controller = StreamController<List<ShipOrder>>(
        onListen: trigger,
        onPause: dispose,
        onResume: trigger,
        onCancel: dispose);

    return controller.stream;
  }
}
