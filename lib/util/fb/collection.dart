part of './index.dart';

const userCollection = 'user';
const orderCollection = 'orderProd';
const shipCollection = 'shipment';
const vendorProdCollection = 'vendorProduct';

enum IoCollection { users, shipment, order, vendorProd }

CollectionReference getCollection({required IoCollection c, String? userId}) {
  final store = FirebaseFirestore.instance;
  switch (c) {
    case IoCollection.users:
      return store.collection(userCollection);
    case IoCollection.vendorProd:
      return store.collection(vendorProdCollection);
    case IoCollection.shipment:
      assert(userId != null);
      return store
          .collection(userCollection)
          .doc(userId!)
          .collection(shipCollection);
    case IoCollection.order:
      assert(userId != null);
      return store
          .collection(userCollection)
          .doc(userId!)
          .collection(orderCollection);
  }
}

enum IoCollectionGroup { order }

Query<Map<String, dynamic>> getCollectionGroup({required IoCollectionGroup c}) {
  final store = FirebaseFirestore.instance;
  switch (c) {
    case IoCollectionGroup.order:
      return store.collectionGroup(orderCollection);
  }
}
