part of './index.dart';

enum IoCollection { users, shipment, order }

const userCollection = 'user';
const orderCollection = 'orderProd';
const shipCollection = 'shipment';

CollectionReference getCollection({required IoCollection c, String? userId}) {
  final store = FirebaseFirestore.instance;
  switch (c) {
    case IoCollection.users:
      return store.collection(userCollection);
    case IoCollection.shipment:
      assert(userId == null);
      return store
          .collection(userCollection)
          .doc(userId)
          .collection(shipCollection);
    case IoCollection.order:
      assert(userId == null);
      return store
          .collection(userCollection)
          .doc(userId)
          .collection(orderCollection);
  }
}
