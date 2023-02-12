part of "./index.dart";

Future<Iterable<QuerySnapshot<T>>> batchInQuery<T>(
    List<dynamic> ids, Query<T> c, String field) {
  int i = 0;
  int batchSize = 10;
  List<Future<QuerySnapshot<T>>> batches = [];
  bool stop = false;
  while (!stop) {
    var start = i * batchSize;
    var end = start + batchSize;
    if (end > ids.length) {
      end = ids.length;
      stop = true;
    }
    final batch = ids.sublist(start, end);
    if (batch.isEmpty) {
      break;
    }
    batches.add(c.where(field, whereIn: batch).get());
    i += 1;
  }
  return Future.wait(batches);
}
