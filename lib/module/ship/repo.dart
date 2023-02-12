import 'dart:async';

import 'package:io_box_uncle/module/auth/index.dart';

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

  Future<void> reqToss(ShipOrder s) async {
    await api.reqToss(s);
  }

  Future<void> receiveToss(ShipOrder s, String newUncle) async {
    await api.receiveToss(s, newUncle);
  }

  Stream<ShipPkg> getShipmentOrders(String userId, String shipManagerId) {
    late StreamController<ShipPkg> controller;
    List<ShipOrder> data = [];
    List<ShipOrder> tossData = [];
    List<Shipment> shipments = [];
    List<Shipment> tossShips = [];
    List<IoOrder> orders = [];
    Map<String, IoUser> users = {};
    Set<String> userIds = {};
    final shipStream = api.getShipmentStream(shipManagerId);
    final orderStream = api.getOrderStream(userId, shipManagerId);

    void trigger() async {
      data = [];
      tossData = [];
      for (var i = 0; i < orders.length; i++) {
        var order = orders[i];

        for (var j = 0; j < order.items.length; j++) {
          final item = order.items[j];
          if (users.containsKey(item.shopId) &&
              users.containsKey(item.vendorId) &&
              users.containsKey(order.shipManagerId)) {
            final ships = shipments.where(
              (x) => x.shippingId == item.shipmentId,
            );
            if (ships.isNotEmpty) {
              final d = ShipOrder(
                  order: item,
                  shipment: ships.first,
                  ioOrder: order,
                  vendorGarment: item.vendorProd,
                  shopUser: users[item.shopId]!,
                  vendorUser: users[item.vendorId]!,
                  managerUser: users[order.shipManagerId]!);
              if (!data.contains(d)) {
                data.add(d);
              }
              continue;
            }
            final toss = tossShips.where(
              (x) => x.shippingId == item.shipmentId,
            );
            if (toss.isNotEmpty) {
              final d = ShipOrder(
                  order: item,
                  shipment: toss.first,
                  ioOrder: order,
                  vendorGarment: item.vendorProd,
                  shopUser: users[item.shopId]!,
                  vendorUser: users[item.vendorId]!,
                  managerUser: users[order.shipManagerId]!);
              if (!tossData.contains(d)) {
                tossData.add(d);
              }
            }
          }
        }
      }

      controller.add(ShipPkg(data: data, tossData: tossData));
    }

    final shipSubscribe = shipStream.listen((event) {
      shipments = [];
      tossShips = [];
      if (event.docs.isEmpty) return;
      for (var element in event.docs) {
        if (element.exists) {
          final shipment =
              Shipment.fromJson(element.data() as Map<String, Object?>);
          if (shipment.uncleId == userId) {
            shipments.add(shipment);
          } else if (shipment.uncleId == null) {
            tossShips.add(shipment);
          }
        }
      }
      if (orders.isNotEmpty) {
        trigger();
      }
    });

    final orderSubscribe = orderStream.listen((event) async {
      orders = [];
      for (var element in event.docs) {
        if (element.exists) {
          final ord = element.data();
          orders.add(ord);
          var ids = [ord.shopId, ...ord.vendorIds];
          if (ord.shipManagerId != null) {
            ids.add(ord.shipManagerId!);
          }
          userIds.addAll(ids);
        }
      }
      var newUids = userIds.where((uid) => !users.containsKey(uid));
      if (newUids.isNotEmpty) {
        var newUsers = await AuthRepo.getUserByIds(newUids.toList());
        for (var u in newUsers) {
          users[u.userInfo.userId] = u;
        }
      }
      if (shipments.isNotEmpty || tossShips.isNotEmpty) {
        trigger();
      }
    });

    void dispose() {
      controller.close();
      shipSubscribe.cancel();
      orderSubscribe.cancel();
    }

    controller = StreamController<ShipPkg>(
        onListen: trigger,
        onPause: dispose,
        onResume: trigger,
        onCancel: dispose);

    return controller.stream;
  }
}

class ShipPkg {
  final List<ShipOrder> data;
  final List<ShipOrder> tossData;
  ShipPkg({required this.data, required this.tossData});
}
