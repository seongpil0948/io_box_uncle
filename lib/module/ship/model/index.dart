import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:io_box_uncle/module/auth/index.dart';
import 'package:io_box_uncle/module/product/index.dart';
import 'package:io_box_uncle/util/common/index.dart';

part 'index.freezed.dart';
part 'index.g.dart';

part "./order.dart";
part "./shipment.dart";
part "./locate.dart";

@freezed //  all of this class's properties are immutable.
class ShipOrder extends Equatable with _$ShipOrder {
  @JsonSerializable(explicitToJson: true)
  const factory ShipOrder(
      {required Shipment shipment,
      required IoOrder ioOrder,
      required OrderItem order,
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
        shipment,
        order.state,
        order.orderCnt,
        order.activeCnt,
        shopUser.userInfo.userId,
        vendorUser.userInfo.userId,
        managerUser,
      ];
}
