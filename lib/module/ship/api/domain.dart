import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:io_box_uncle/util/fb/index.dart';

import "../model/index.dart";
part './firebase.dart';

/// {@template shipment api}
/// The interface for an API that provides access to a Shipment & GarmentOrder.
/// {@endtemplate}
///
abstract class ShipmentApi {
  /// {@macro todos_api}
  const ShipmentApi();
  Stream<QuerySnapshot> getShipmentStream(String userId);
  Stream<QuerySnapshot> getOrderStream(String userId, shipManagerId);

  Future<void> updateOrder(GarmentOrder o);
  Future<void> updateShipment(Shipment s);
  Future<void> reqToss(ShipOrder s);
  Future<void> receiveToss(ShipOrder s, String newUncle);
  Future<void> startPickup(ShipOrder s);
  Future<void> donePickup(ShipOrder s);
  Future<void> toBeforeShip(ShipOrder s);
  Future<void> startShip(ShipOrder s);
  Future<void> doneShip(ShipOrder s);

  Future<void> saveShipment(ShipOrder todo);

  Future<void> deleteShipment(String id);
}

/// Error thrown when a [Shipment] with a given id is not found.
class ShipmentNotFoundException implements Exception {}
