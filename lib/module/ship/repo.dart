import 'dart:async';

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
    final shipStream = api.getShipmentStream(shipManagerId);
    final orderStream = api.getOrderStream(userId, shipManagerId);

    void trigger() {
      data = [];
      for (var i = 0; i < orders.length; i++) {
        var order = orders[i];
        for (var ord in order.items) {
          final ships = shipments.where(
            (x) => x.shippingId == ord.shipmentId,
          );
          assert(ships.length == 1);
          final ship = ships.first;
          data.add(ShipOrder(order: ord, shipment: ship, garmentOrder: order));
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

    final orderSubscribe = orderStream.listen((event) {
      orders = [];
      if (event.docs.isEmpty) return;
      for (var element in event.docs) {
        if (element.exists) {
          orders.add(
              GarmentOrder.fromJson(element.data() as Map<String, Object?>));
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
