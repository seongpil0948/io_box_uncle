part of './index.dart';

const ioApiUrl = "https://io-box.du.r.appspot.com/api";
const multiPushUrl = "$ioApiUrl/fcm/push";
final shipRepo = ShipmentRepo(api: ShipmentFB());
