part of './index.dart';

const userCollection = 'user';
const payCollection = 'ioPay';

enum IoCollection {
  users,
  ioPay,
  payHistory,
  vendorProd,
  shopProd,
  mapper,
  order,
  orderNumber,
  userLog,
  tokens,
  shipment,
  pickupLocates,
  csPost,
  virtualVendorProd,
  virtualOrder,
  virtualUser
}

CollectionReference getCollection({required IoCollection c, String? userId}) {
  final store = FirebaseFirestore.instance;
  switch (c) {
    case IoCollection.users:
      return store.collection("user");
    case IoCollection.vendorProd:
      return store.collection("vendorProduct");
    case IoCollection.shipment:
      assert(userId != null);
      return store
          .collection(userCollection)
          .doc(userId!)
          .collection("shipment");
    case IoCollection.order:
      assert(userId != null);
      return store
          .collection(userCollection)
          .doc(userId!)
          .collection("orderProd");
    case IoCollection.ioPay:
      return store.collection(payCollection);
    case IoCollection.payHistory:
      return store.collection(payCollection).doc(userId!).collection("history");
    case IoCollection.shopProd:
      return store.collection("shopProduct");
    case IoCollection.mapper:
      return store.collection("mapper");
    case IoCollection.orderNumber:
      return store
          .collection(userCollection)
          .doc(userId!)
          .collection("orderNumber");
    case IoCollection.userLog:
      return store.collection(userCollection).doc(userId!).collection("logs");
    case IoCollection.tokens:
      return store.collection(userCollection).doc(userId!).collection("tokens");
    case IoCollection.pickupLocates:
      return store.collection("pickupLocates");
    case IoCollection.csPost:
      return store.collection("csPost");
    case IoCollection.virtualVendorProd:
      return store
          .collection(userCollection)
          .doc(userId!)
          .collection("virtualVendorProduct");
    case IoCollection.virtualOrder:
      return store
          .collection(userCollection)
          .doc(userId!)
          .collection("virtualOrderProd");
    case IoCollection.virtualUser:
      return store
          .collection(userCollection)
          .doc(userId!)
          .collection("virtualUser");
  }
}

enum IoCollectionGroup {
  order,
  virtualUser,
  virtualVendorProd,
  userLog,
  payHistory
}

Query<Map<String, dynamic>> getCollectionGroup({required IoCollectionGroup c}) {
  final store = FirebaseFirestore.instance;
  switch (c) {
    case IoCollectionGroup.order:
      return store.collectionGroup("orderProd");
    case IoCollectionGroup.virtualUser:
      return store.collectionGroup("virtualUser");
    case IoCollectionGroup.virtualVendorProd:
      return store.collectionGroup("virtualVendorProduct");
    case IoCollectionGroup.userLog:
      return store.collectionGroup("logs");
    case IoCollectionGroup.payHistory:
      return store.collectionGroup("history");
  }
}
