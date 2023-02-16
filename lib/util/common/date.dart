part of './index.dart';

int daysBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return (to.difference(from).inHours / 24).round();
}

DateTime timeStamp2DateTime(Timestamp time) {
  return DateTime.fromMicrosecondsSinceEpoch(time.microsecondsSinceEpoch);
}

DateTime? toDateTime(dynamic t) {
  if (t is int) {
    return Timestamp.fromMillisecondsSinceEpoch(t).toDate();
  } else if (t is Timestamp) {
    return timeStamp2DateTime(t);
  } else if (t is String) {
    return DateTime.parse(t);
  }
  return null;
}

DateTime toDateTimeDefault(dynamic t) {
  try {
    var result = toDateTime(t);
    return result ?? DateTime.now();
  } catch (e) {
    return DateTime.now();
  }
}

Timestamp? toTimeStamp(dynamic d) {
  if (d is int) {
    return Timestamp.fromMillisecondsSinceEpoch(d);
  } else if (d is DateTime) {
    return Timestamp.fromMillisecondsSinceEpoch(d.millisecondsSinceEpoch);
  } else if (d == null) {
    return null;
  }

  throw ArgumentError("toTimeStamp: $d");
}

Map<String, DateTime?> dateMapFromJson(dynamic d) {
  var now = DateTime.now();
  if (d == null || d is! Map) {
    return {
      "createdAt": now,
      "updatedAt": now,
    };
  }
  Map<String, DateTime?> result = {};
  for (var element in d.entries) {
    result[element.key] = toDateTime(element.value);
  }
  return result;
}

Map<String, Timestamp?> dateMapToJson(dynamic d) {
  var now = Timestamp.now();
  if (d == null || d is! Map) {
    return {
      "createdAt": now,
      "updatedAt": now,
    };
  }
  Map<String, Timestamp?> result = {};
  for (var element in d.entries) {
    result[element.key] = toTimeStamp(element.value);
  }
  return result;
}
