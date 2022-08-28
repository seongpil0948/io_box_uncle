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

  Future<void> saveShipment(ShipOrder todo);

  Future<void> deleteShipment(String id);

  /// Deletes all completed shipments.
  ///
  /// Returns the number of deleted shipments.
  Future<int> clearCompleted();

  Future<int> completeAll({required bool isCompleted});
}

/// Error thrown when a [Shipment] with a given id is not found.
class ShipmentNotFoundException implements Exception {}
