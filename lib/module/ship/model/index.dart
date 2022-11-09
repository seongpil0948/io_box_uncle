import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:io_box_uncle/module/auth/index.dart';
import 'package:io_box_uncle/module/product/index.dart';

part 'index.freezed.dart';
part 'index.g.dart';

part "./order.dart";
part "./shipment.dart";

@freezed //  all of this class's properties are immutable.
class ShipOrder extends Equatable with _$ShipOrder {
  @JsonSerializable(explicitToJson: true)
  const factory ShipOrder(
      {required Shipment shipment,
      required GarmentOrder garmentOrder,
      required ProdOrder order,
      required IoUser shopUser,
      required IoUser vendorUser,
      required IoUser managerUser,
      required VendorGarment vendorGarment}) = _ShipOrder;

  Locate get dest =>
      order.isPickup ? shipment.startAddress : shipment.receiveAddress;

  const ShipOrder._();
  factory ShipOrder.fromJson(Map<String, Object?> json) =>
      _$ShipOrderFromJson(json);

  @override
  List<Object?> get props => [
        order.id,
        shipment.shippingId,
        shipment.updatedAt,
        shipment.paid,
        shipment.size,
        shipment.weight,
        shipment.uncleId,
        order.state,
        order.orderCnt,
        order.activeCnt,
        shopUser.userInfo.userId,
        vendorUser.userInfo.userId,
        managerUser.userInfo.userId,
      ];
}
