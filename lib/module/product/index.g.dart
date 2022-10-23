// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VendorGarment _$$_VendorGarmentFromJson(Map<String, dynamic> json) =>
    _$_VendorGarment(
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      part: $enumDecode(_$PartEnumMap, json['part']),
      ctgr: json['ctgr'] as String,
      color: json['color'] as String,
      allowPending: json['allowPending'] as bool,
      size: json['size'] as String,
      fabric: json['fabric'] as String,
      vendorId: json['vendorId'] as String,
      vendorProdId: json['vendorProdId'] as String,
      vendorPrice: json['vendorPrice'] as int,
      stockCnt: json['stockCnt'] as int,
      vendorProdName: json['vendorProdName'] as String,
      titleImgs:
          (json['titleImgs'] as List<dynamic>).map((e) => e as String).toList(),
      bodyImgs:
          (json['bodyImgs'] as List<dynamic>).map((e) => e as String).toList(),
      info: json['info'],
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_VendorGarmentToJson(_$_VendorGarment instance) =>
    <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender]!,
      'part': _$PartEnumMap[instance.part]!,
      'ctgr': instance.ctgr,
      'color': instance.color,
      'allowPending': instance.allowPending,
      'size': instance.size,
      'fabric': instance.fabric,
      'vendorId': instance.vendorId,
      'vendorProdId': instance.vendorProdId,
      'vendorPrice': instance.vendorPrice,
      'stockCnt': instance.stockCnt,
      'vendorProdName': instance.vendorProdName,
      'titleImgs': instance.titleImgs,
      'bodyImgs': instance.bodyImgs,
      'info': instance.info,
      'description': instance.description,
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
