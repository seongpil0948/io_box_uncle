part of "./domain.dart";

class ShipmentFB extends ShipmentApi {
  final db = FirebaseFirestore.instance;
  ShipmentFB();
  @override
  Stream<QuerySnapshot> getShipmentStream(String userId) {
    return getCollection(c: IoCollection.shipment, userId: userId).snapshots();
  }

  @override
  Stream<QuerySnapshot> getOrderStream(String userId, shipManagerId) {
    const targetState = [
      "BEFORE_PICKUP",
      "ONGOING_PICKUP",
      "PICKUP_COMPLETE",
      "BEFORE_SHIP",
      "SHIPPING",
      "SHIPPING_COMPLETE"
    ];
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

  @override
  Future<void> startPickup(ShipOrder s) async {
    // // 픽업비용이 쌓이는건 매니저에게 쌓이는건데..
    // // 앱에 보이는건 엉클 근로자 급여액인거잖아
    // // 그럼 ..?
    // final sfDocRef = db.collection("cities").doc("SF");
    // db.runTransaction((transaction) async {
    //   s.shipment.amountMeasurable
    //   final snapshot = await transaction.get(sfDocRef);
    //   final newPopulation = snapshot.get("population") + 1;
    //   transaction.update(sfDocRef, {"population": newPopulation});
    // }).then(
    //   (value) => print("DocumentSnapshot successfully updated!"),
    //   onError: (e) => print("Error updating document $e"),
    // );

    final newOrd = s.garmentOrder.setState(
        s.order.id, OrderState.beforePickup, OrderState.ongoingPickup);
    await updateOrder(newOrd);
  }

  @override
  Future<void> donePickup(ShipOrder s) async {
    final newOrd = s.garmentOrder.setState(
        s.order.id, OrderState.ongoingPickup, OrderState.pickupComplete);
    await updateOrder(newOrd);
  }

  @override
  Future<void> toBeforeShip(ShipOrder s) async {
    final newOrd = s.garmentOrder
        .setState(s.order.id, OrderState.pickupComplete, OrderState.beforeShip);
    await updateOrder(newOrd);
  }

  @override
  Future<void> startShip(ShipOrder s) async {
    final newOrd = s.garmentOrder
        .setState(s.order.id, OrderState.beforeShip, OrderState.shipping);
    await updateOrder(newOrd);
  }

  @override
  Future<void> doneShip(ShipOrder s) async {
    final newOrd = s.garmentOrder
        .setState(s.order.id, OrderState.shipping, OrderState.shippingComplete);
    await updateOrder(newOrd);
  }

  @override
  Future<void> reqToss(ShipOrder s, String targetUncleId) async {
    final newShip = s.shipment.copyWith(uncleId: targetUncleId);
    await updateShipment(newShip);
  }

  @override
  Future<void> updateOrder(GarmentOrder o) async {
    await getCollection(c: IoCollection.order, userId: o.shopId)
        .doc(o.dbId)
        .update(o.toJson());
  }

  @override
  Future<void> updateShipment(Shipment s) async {
    await getCollection(c: IoCollection.shipment, userId: s.managerId)
        .doc(s.shippingId)
        .set(s.toJson());
  }
}
