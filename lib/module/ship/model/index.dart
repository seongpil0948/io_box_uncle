import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:io_box_uncle/module/auth/index.dart';

part 'index.freezed.dart';
part 'index.g.dart';

part "./order.dart";
part "./shipment.dart";

@freezed //  all of this class's properties are immutable.
class ShipOrder with _$ShipOrder {
  const factory ShipOrder({
    required Shipment shipment,
    required ProdOrder order,
  }) = _ShipOrder;

  factory ShipOrder.fromJson(Map<String, Object?> json) =>
      _$ShipOrderFromJson(json);
}
