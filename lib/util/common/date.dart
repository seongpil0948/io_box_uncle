part of './index.dart';

int daysBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return (to.difference(from).inHours / 24).round();
}

DateTime timeStamp2DateTime(Timestamp time) {
  return DateTime.fromMicrosecondsSinceEpoch(time.microsecondsSinceEpoch);
}

DateTime toDateTime(dynamic t) => t is String
    ? DateTime.parse(t)
    : t is DateTime
        ? t
        : timeStamp2DateTime(t);
