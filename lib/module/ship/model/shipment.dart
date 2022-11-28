part of "./index.dart";

@freezed //  all of this class's properties are immutable.
class Shipment extends Equatable with _$Shipment {
  @JsonSerializable(explicitToJson: true)
  const factory Shipment({
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime wishedDeliveryTime,
    required String shippingId,
    required String orderDbId,
    required String managerId,
    String? uncleId,
    String? trackingNo,
    required String orderItemId,
    required ShipMethod shipMethod,
    required String additionalInfo,
    required bool paid,
    String? weightUnit,
    int? weight,
    int? amountByWeight,
    String? sizeUnit,
    int? size,
    int? amountBySize,
    required int shipFeeBasic,
    required int pickupFeeBasic,
    required Locate returnAddress,
    required Locate startAddress,
    required Locate receiveAddress,
  }) = _Shipment;

  get amountMeasurable =>
      sizeUnit != null && weightUnit != null && size != null && weight != null;

  get pickAmount => amountMeasurable
      ? pickupFeeBasic + (size! * amountBySize!) + (weight! + amountByWeight!)
      : throw Exception("pickup amount not measurable");

  get amount => pickAmount + shipFeeBasic;

  const Shipment._();
  factory Shipment.fromJson(Map<String, Object?> json) =>
      _$ShipmentFromJson(json);

  @override
  List<Object?> get props => [shippingId];
}

@freezed //  all of this class's properties are immutable.
class Locate extends Equatable with _$Locate {
  @JsonSerializable(explicitToJson: true)
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
    LocateType? locateType,
  }) = _Locate;

  const Locate._();
  factory Locate.fromJson(Map<String, Object?> json) => _$LocateFromJson(json);

  String get adminArea {
    return "$city $county $town";
  }

  @override
  List<Object?> get props => [code, alias];
}

enum LocateType {
  @JsonValue('SHOP')
  shop,
  @JsonValue('STORAGE')
  storage,
  @JsonValue('ETC')
  etc,
}
