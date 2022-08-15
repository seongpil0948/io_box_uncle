part of './index.dart';

enum Collections { users }

const userCollection = 'user';
CollectionReference getCollection({required Collections c, String? userId}) {
  final store = FirebaseFirestore.instance;
  switch (c) {
    case Collections.users:
      return store.collection(userCollection);
  }
}
