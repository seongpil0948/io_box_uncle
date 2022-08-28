part of "./index.dart";

@freezed //  all of this class's properties are immutable.
class Shipment with _$Shipment {
  const factory Shipment({
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime wishedDeliveryTime,
    required String shippingId,
    required String orderDbId,
    required String managerId,
    String? uncleId,
    String? trackingNo,
    required String prodOrderId,
    required ShipMethod shipMethod,
    required String additionalInfo,
    required bool paid,
    String? weightUnit,
    int? weight,
    int? amountByWeight,
    String? sizeUnit,
    int? size,
    int? amountBySize,
    required int amountBasic,
    required LocateType locateType,
  }) = _Shipment;

  factory Shipment.fromJson(Map<String, Object?> json) =>
      _$ShipmentFromJson(json);
}

@freezed //  all of this class's properties are immutable.
class Locate with _$Locate {
  const factory Locate({
    String? code,
    required String alias,
    int? latitude,
    int? longitude,
    String? detailLocate,
    String? firstName,
    String? lastName,
    String? phone,
    String? postalCode,
    required String country,
    String? city,
    String? county,
    String? town,
    required String? locateType,
  }) = _Locate;

  factory Locate.fromJson(Map<String, Object?> json) => _$LocateFromJson(json);
}

enum LocateType {
  @JsonValue('SHOP')
  @JsonValue('매장')
  shop,
  @JsonValue('STORAGE')
  @JsonValue('창고')
  storage,
  @JsonValue('기타')
  @JsonValue('ETC')
  etc,
}
