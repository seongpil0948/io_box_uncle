part of "../index.dart";

@freezed //  all of this class's properties are immutable.
class ShopGarment with _$ShopGarment {
  @JsonSerializable(explicitToJson: true)
  const factory ShopGarment({
    required String size,
    required String color,
    required String vendorId,
    required String vendorProdId,
    required String shopProdId,
    required String shopId,
    required int prodPrice,
    required String prodName,
    required dynamic info,
    required String description,
    String? cafeProdId,
    String? zigzagProdId,
    // ignore: non_constant_identifier_names
    @Default({}) Map<String, dynamic> TBD,
    @Default(ProdType.garment) ProdType prodType,
    @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
        DateTime? createdAt,
    @JsonKey(name: 'updatedAt', fromJson: toDateTime, toJson: toTimeStamp)
        DateTime? updatedAt,
  }) = _ShopGarment;

  factory ShopGarment.fromJson(Map<String, Object?> json) =>
      _$ShopGarmentFromJson(json);
}
