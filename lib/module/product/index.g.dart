// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VendorGarment _$$_VendorGarmentFromJson(Map<String, dynamic> json) =>
    _$_VendorGarment(
      createdAt: toDateTime(json['createdAt']),
      updatedAt: toDateTime(json['updatedAt']),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      part: $enumDecode(_$PartEnumMap, json['part']),
      ctgr: json['ctgr'] as String,
      color: json['color'] as String,
      allowPending: json['allowPending'] as bool,
      size: json['size'] as String,
      fabric: json['fabric'] as String,
      vendorId: json['vendorId'] as String,
      vendorProdId: json['vendorProdId'] as String,
      vendorProdPkgId: json['vendorProdPkgId'] as String,
      vendorPrice: json['vendorPrice'] as int,
      stockCnt: json['stockCnt'] as int,
      vendorProdName: json['vendorProdName'] as String,
      titleImgs:
          (json['titleImgs'] as List<dynamic>).map((e) => e as String).toList(),
      bodyImgs:
          (json['bodyImgs'] as List<dynamic>).map((e) => e as String).toList(),
      info: json['info'],
      description: json['description'] as String,
      TBD: json['TBD'] as Map<String, dynamic>,
      prodType: $enumDecode(_$ProdTypeEnumMap, json['prodType']),
    );

Map<String, dynamic> _$$_VendorGarmentToJson(_$_VendorGarment instance) =>
    <String, dynamic>{
      'createdAt': toTimeStamp(instance.createdAt),
      'updatedAt': toTimeStamp(instance.updatedAt),
      'gender': _$GenderEnumMap[instance.gender]!,
      'part': _$PartEnumMap[instance.part]!,
      'ctgr': instance.ctgr,
      'color': instance.color,
      'allowPending': instance.allowPending,
      'size': instance.size,
      'fabric': instance.fabric,
      'vendorId': instance.vendorId,
      'vendorProdId': instance.vendorProdId,
      'vendorProdPkgId': instance.vendorProdPkgId,
      'vendorPrice': instance.vendorPrice,
      'stockCnt': instance.stockCnt,
      'vendorProdName': instance.vendorProdName,
      'titleImgs': instance.titleImgs,
      'bodyImgs': instance.bodyImgs,
      'info': instance.info,
      'description': instance.description,
      'TBD': instance.TBD,
      'prodType': _$ProdTypeEnumMap[instance.prodType]!,
    };

const _$GenderEnumMap = {
  Gender.male: 'MALE',
  Gender.female: 'FEMALE',
  Gender.unisex: 'UNISEX',
  Gender.kids: 'KIDS',
};

const _$PartEnumMap = {
  Part.male: 'TOP',
  Part.female: 'BOTTOM',
  Part.unisex: 'OUTER',
  Part.shoes: 'SHOES',
  Part.bag: 'BAG',
  Part.etc: 'ETC',
  Part.kids: 'DRESS',
};

const _$ProdTypeEnumMap = {
  ProdType.garment: 'GARMENT',
  ProdType.grocery: 'GROCERY',
};

_$_ShopGarment _$$_ShopGarmentFromJson(Map<String, dynamic> json) =>
    _$_ShopGarment(
      size: json['size'] as String,
      color: json['color'] as String,
      vendorId: json['vendorId'] as String,
      vendorProdId: json['vendorProdId'] as String,
      shopProdId: json['shopProdId'] as String,
      shopId: json['shopId'] as String,
      prodPrice: json['prodPrice'] as int,
      prodName: json['prodName'] as String,
      info: json['info'],
      description: json['description'] as String,
      cafeProdId: json['cafeProdId'] as String?,
      zigzagProdId: json['zigzagProdId'] as String?,
      TBD: json['TBD'] as Map<String, dynamic>? ?? const {},
      prodType: $enumDecodeNullable(_$ProdTypeEnumMap, json['prodType']) ??
          ProdType.garment,
      createdAt: toDateTime(json['createdAt']),
      updatedAt: toDateTime(json['updatedAt']),
    );

Map<String, dynamic> _$$_ShopGarmentToJson(_$_ShopGarment instance) =>
    <String, dynamic>{
      'size': instance.size,
      'color': instance.color,
      'vendorId': instance.vendorId,
      'vendorProdId': instance.vendorProdId,
      'shopProdId': instance.shopProdId,
      'shopId': instance.shopId,
      'prodPrice': instance.prodPrice,
      'prodName': instance.prodName,
      'info': instance.info,
      'description': instance.description,
      'cafeProdId': instance.cafeProdId,
      'zigzagProdId': instance.zigzagProdId,
      'TBD': instance.TBD,
      'prodType': _$ProdTypeEnumMap[instance.prodType]!,
      'createdAt': toTimeStamp(instance.createdAt),
      'updatedAt': toTimeStamp(instance.updatedAt),
    };
