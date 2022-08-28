import 'dart:async';

import 'api/domain.dart';
import 'model/index.dart';

class ShipmentRepo {
  final ShipmentApi api;
  const ShipmentRepo({required this.api});

  Stream<List<ShipOrder>> getShipmentOrders(
      String userId, String shipManagerId) {
    late StreamController<List<ShipOrder>> controller;
    List<ShipOrder> data = [];
    List<Shipment> shipments = [];
    List<ProdOrder> prodOrders = [];
    final shipStream = api.getShipmentStream(userId);
    final orderStream = api.getOrderStream(userId, shipManagerId);

    void trigger() {
      data = [];
      for (var ord in prodOrders) {
        final ships = shipments.where(
          (x) => x.shippingId == ord.shipmentId,
        );
        assert(ships.length == 1);
        final ship = ships.first;
        data.add(ShipOrder(order: ord, shipment: ship));
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
      trigger();
    });

    final orderSubscribe = orderStream.listen((event) {
      prodOrders = [];
      if (event.docs.isEmpty) return;
      for (var element in event.docs) {
        if (element.exists) {
          final order =
              GarmentOrder.fromJson(element.data() as Map<String, Object?>);
          for (var prodOrd in order.items) {
            prodOrders.add(prodOrd);
          }
        }
      }
      trigger();
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
