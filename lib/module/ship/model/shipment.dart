part of "./index.dart";

@freezed //  all of this class's properties are immutable.
class Shipment extends Equatable with _$Shipment {
  @JsonSerializable(explicitToJson: true)
  const factory Shipment({
    required DateTime createdAt,
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
    DateTime? wishedDeliveryTime,
    required String managerId,
  }) = _Shipment;

  bool get amountMeasurable =>
      sizeUnit != null && weightUnit != null && size != null && weight != null;

  int get pickAmount => amountMeasurable
      ? pickupFeeBasic + (size! * amountBySize!) + (weight! + amountByWeight!)
      : throw Exception("pickup amount not measurable");

  int get amount => pickAmount + shipFeeBasic;

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
