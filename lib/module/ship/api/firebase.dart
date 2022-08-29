part of "./domain.dart";

class ShipmentFB extends ShipmentApi {
  const ShipmentFB();

  @override
  Future<int> clearCompleted() {
    throw UnimplementedError();
  }

  @override
  Future<int> completeAll({required bool isCompleted}) {
    throw UnimplementedError();
  }

  @override
  Stream<QuerySnapshot> getShipmentStream(String userId) {
    return getCollection(c: IoCollection.shipment, userId: userId).snapshots();
  }

  @override
  Stream<QuerySnapshot> getOrderStream(String userId, shipManagerId) {
    const targetState = ["BEFORE_SHIP", "SHIPPING", "SHIPPING_COMPLETE"];
    return getCollectionGroup(c: IoCollectionGroup.order)
        .where("shipManagerId", isEqualTo: shipManagerId)
        .where("states", arrayContainsAny: targetState)
        .snapshots();
  }

  @override
  Future<void> saveShipment(ShipOrder todo) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteShipment(String id) {
    throw UnimplementedError();
  }
}
