part of "./index.dart";

@freezed //  all of this class's properties are immutable.
class Shipment extends Equatable with _$Shipment {
  @JsonSerializable(explicitToJson: true)
  const factory Shipment({
    @JsonKey(name: 'createdAt', fromJson: toDateTimeDefault, toJson: toTimeStamp)
        required DateTime createdAt,
    @JsonKey(name: 'updatedAt', fromJson: toDateTimeDefault, toJson: toTimeStamp)
        required DateTime updatedAt,
    required String shippingId,
    required String orderDbId,
    String? uncleId,
    required String orderItemId,
    String? trackingNo,
    required ShipMethod shipMethod,
    required String additionalInfo,
    required bool paid,
    String? weightUnit,
    int? weight,
    String? sizeUnit,
    int? size,
    int? amountBySize,
    int? amountByWeight,
    required int shipFeeBasic,
    required int pickupFeeBasic,
    required Locate returnAddress,
    required Locate startAddress,
    required Locate receiveAddress,
    ShipDoneInfo? doneInfo,
    @JsonKey(name: 'wishedDeliveryTime', fromJson: toDateTime, toJson: toTimeStamp)
        DateTime? wishedDeliveryTime,
    required String managerId,
  }) = _Shipment;

  bool get amountMeasurable =>
      sizeUnit != null &&
      weightUnit != null &&
      size != null &&
      weight != null &&
      amountBySize != null &&
      amountByWeight != null;

  // pickupFeeBasic 지역별 픽업비는 픽업요청시 이미 지불되었다.
  int get pickAmount => amountMeasurable
      ? (size! * amountBySize!) + (weight! * amountByWeight!)
      : throw Exception("pickup amount not measurable");
  int get amount => pickAmount;
  bool get shipDoneAble =>
      doneInfo != null && doneInfo!.photos.isNotEmpty && amountMeasurable;

  const Shipment._();
  factory Shipment.fromJson(Map<String, Object?> json) =>
      _$ShipmentFromJson(json);

  @override
  List<Object?> get props => [
        shippingId,
        orderDbId,
        uncleId,
        paid,
        weight,
        weightUnit,
        sizeUnit,
        size,
        amountBySize,
        amountByWeight
      ];
}

@freezed //  all of this class's properties are immutable.
class ShipDoneInfo extends Equatable with _$ShipDoneInfo {
  @JsonSerializable(explicitToJson: true)
  const factory ShipDoneInfo(
      {required String memo, required List<String> photos}) = _ShipDoneInfo;
  const ShipDoneInfo._();
  factory ShipDoneInfo.fromJson(Map<String, Object?> json) =>
      _$ShipDoneInfoFromJson(json);

  @override
  List<Object?> get props => [photos];
}
