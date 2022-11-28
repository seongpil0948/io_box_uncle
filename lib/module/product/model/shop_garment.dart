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
    required String cafeProdId,
    required String zigzagProdId,
    // ignore: non_constant_identifier_names
    required Map<String, dynamic> TBD,
    required ProdType prodType,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ShopGarment;

  factory ShopGarment.fromJson(Map<String, Object?> json) =>
      _$ShopGarmentFromJson(json);
}
