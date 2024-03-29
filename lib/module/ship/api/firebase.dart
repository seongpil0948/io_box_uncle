part of "./domain.dart";

class ShipmentFB extends ShipmentApi {
  final db = FirebaseFirestore.instance;
  ShipmentFB();
  @override
  Stream<QuerySnapshot> getShipmentStream(String userId) {
    return getCollection(c: IoCollection.shipment, userId: userId).snapshots();
  }

  @override
  Stream<QuerySnapshot<IoOrder>> getOrderStream(String userId, shipManagerId) {
    const targetState = [
      "BEFORE_ASSIGN_PICKUP",
      "BEFORE_PICKUP",
      "ONGOING_PICKUP",
      "PICKUP_COMPLETE",
      "BEFORE_SHIP",
      "SHIPPING",
      "SHIPPING_COMPLETE"
    ];
    return getCollectionGroup(c: IoCollectionGroup.order)
        .withConverter<IoOrder>(
            fromFirestore: (snapshot, _) => IoOrder.fromJson(snapshot.data()!),
            toFirestore: (model, _) => model.toJson())
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
    //   (value) async =>  await IoLogger.log(IoSeverity.info, "DocumentSnapshot successfully updated!");,
    //   onError: (e) async =>  await IoLogger.log(IoSeverity.info, "Error updating document $e");,
    // );

    final newOrd = s.ioOrder.setState(
        s.order.id, OrderState.beforePickup, OrderState.ongoingPickup);
    await updateOrder(newOrd);
  }

  @override
  Future<void> donePickup(ShipOrder s) async {
    final newOrd = s.ioOrder.setState(
        s.order.id, OrderState.ongoingPickup, OrderState.pickupComplete);
    await updateShipment(s.shipment);
    await updateOrder(newOrd);
  }

  @override
  Future<void> toBeforeShip(ShipOrder s) async {
    final newOrd = s.ioOrder
        .setState(s.order.id, OrderState.pickupComplete, OrderState.beforeShip);
    await updateOrder(newOrd);
  }

  @override
  Future<void> startShip(ShipOrder s) async {
    final newOrd = s.ioOrder
        .setState(s.order.id, OrderState.beforeShip, OrderState.shipping);
    await updateOrder(newOrd);
  }

  @override
  Future<void> doneShip(ShipOrder s) async {
    final newOrd = s.ioOrder
        .setState(s.order.id, OrderState.shipping, OrderState.shippingComplete);
    await updateShipment(s.shipment);
    await updateOrder(newOrd);
  }

  @override
  Future<void> reqToss(ShipOrder s) async {
    final newShip = s.shipment.copyWith(uncleId: null);
    Map<String, DateTime?> od = Map.from(s.ioOrder.od);
    od["tossAt"] = DateTime.now();
    final newOrd = s.ioOrder.copyWith(od: od).setState(
        s.order.id, OrderState.beforePickup, OrderState.beforeAssignPickup);

    await updateShipment(newShip);
    await updateOrder(newOrd);
  }

  @override
  Future<void> receiveToss(ShipOrder s, String newUncle) async {
    final newShip = s.shipment.copyWith(uncleId: newUncle);
    final newOrd = s.ioOrder.setState(
        s.order.id, OrderState.beforeAssignPickup, OrderState.beforePickup);
    await updateShipment(newShip);
    await updateOrder(newOrd);
  }

  @override
  Future<void> updateOrder(IoOrder o) async {
    await getCollection(c: IoCollection.order, userId: o.shopId)
        .doc(o.dbId)
        .update(o.toJson());
  }

  @override
  Future<void> updateShipment(Shipment s) async {
    await getCollection(c: IoCollection.shipment, userId: s.managerId)
        .doc(s.shippingId)
        .update(s.toJson());
  }
}
