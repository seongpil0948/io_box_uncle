part of "../index.dart";

// vendorPrice: number;
// stockCnt: number;
// vendorProdName: string;
// titleImgs: string[];
// bodyImgs: string[];
// info: string;
// description: string;

@freezed //  all of this class's properties are immutable.
class VendorGarment with _$VendorGarment {
  @JsonSerializable(explicitToJson: true)
  const factory VendorGarment({
    DateTime? createdAt,
    DateTime? updatedAt,
    required Gender gender,
    required Part part,
    required String ctgr,
    required String color,
    required bool allowPending,
    required String size,
    required String fabric,
    required String vendorId,
    required String vendorProdId,
    required String vendorProdPkgId,
    required int vendorPrice,
    required int stockCnt,
    required String vendorProdName,
    required List<String> titleImgs,
    required List<String> bodyImgs,
    required dynamic info,
    required String description,
    required Map<String, dynamic> TBD,
    required ProdType prodType,
  }) = _VendorGarment;

  factory VendorGarment.fromJson(Map<String, Object?> json) =>
      _$VendorGarmentFromJson(json);
}

enum Gender {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
  @JsonValue('UNISEX')
  unisex,
  @JsonValue('KIDS')
  kids
}

enum Part {
  @JsonValue('TOP')
  male,
  @JsonValue('BOTTOM')
  female,
  @JsonValue('OUTER')
  unisex,
  @JsonValue('SHOES')
  shoes,
  @JsonValue('BAG')
  bag,
  @JsonValue('ETC')
  etc,
  @JsonValue('DRESS')
  kids
}

enum ProdType {
  @JsonValue('GARMENT')
  garment,
  @JsonValue('GROCERY')
  grocery,
}
