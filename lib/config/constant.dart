part of './index.dart';

const ioApiUrl = "https://io-box.du.r.appspot.com/api";
const multiPushUrl = "$ioApiUrl/msg/sendPush";
final shipRepo = ShipmentRepo(api: ShipmentFB());
