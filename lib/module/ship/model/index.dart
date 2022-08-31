import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:io_box_uncle/module/auth/index.dart';

part 'index.freezed.dart';
part 'index.g.dart';

part "./order.dart";
part "./shipment.dart";

@freezed //  all of this class's properties are immutable.
class ShipOrder extends Equatable with _$ShipOrder {
  const factory ShipOrder({
    required Shipment shipment,
    required GarmentOrder garmentOrder,
    required ProdOrder order,
  }) = _ShipOrder;

  const ShipOrder._();
  factory ShipOrder.fromJson(Map<String, Object?> json) =>
      _$ShipOrderFromJson(json);

  @override
  List<Object?> get props => [order.id, shipment.shippingId];
}
