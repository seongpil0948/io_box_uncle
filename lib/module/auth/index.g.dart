// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IoUser _$$_IoUserFromJson(Map<String, dynamic> json) => _$_IoUser(
      userInfo: IoUserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      preferDark: json['preferDark'] as bool,
      uncleInfo: json['uncleInfo'] == null
          ? null
          : UncleInfo.fromJson(json['uncleInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IoUserToJson(_$_IoUser instance) => <String, dynamic>{
      'userInfo': instance.userInfo,
      'preferDark': instance.preferDark,
      'uncleInfo': instance.uncleInfo,
    };

_$_IoUserInfo _$$_IoUserInfoFromJson(Map<String, dynamic> json) =>
    _$_IoUserInfo(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool,
      profileImg: json['profileImg'] as String?,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      fcmTokens:
          (json['fcmTokens'] as List<dynamic>).map((e) => e as String).toList(),
      passed: json['passed'] as bool,
      phone: json['phone'] as String?,
      managerId: json['managerId'] as String?,
      workerIds: (json['workerIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      uncleId: json['uncleId'] as String?,
    );

Map<String, dynamic> _$$_IoUserInfoToJson(_$_IoUserInfo instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userId': instance.userId,
      'userName': instance.userName,
      'displayName': instance.displayName,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'profileImg': instance.profileImg,
      'role': _$UserRoleEnumMap[instance.role]!,
      'fcmTokens': instance.fcmTokens,
      'passed': instance.passed,
      'phone': instance.phone,
      'managerId': instance.managerId,
      'workerIds': instance.workerIds,
      'uncleId': instance.uncleId,
    };

const _$UserRoleEnumMap = {
  UserRole.shop: 'SHOP',
  UserRole.uncle: 'UNCLE',
  UserRole.vendor: 'VENDOR',
  UserRole.uncleWorker: 'UNCLE_WORKER',
};

_$_UncleInfo _$$_UncleInfoFromJson(Map<String, dynamic> json) => _$_UncleInfo(
      pickupLocates: (json['pickupLocates'] as List<dynamic>)
          .map((e) => LocateAmount.fromJson(e as Map<String, dynamic>))
          .toList(),
      shipLocates: (json['shipLocates'] as List<dynamic>)
          .map((e) => LocateAmount.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountBySize: Map<String, int>.from(json['amountBySize'] as Map),
      amountByWeight: Map<String, int>.from(json['amountByWeight'] as Map),
    );

Map<String, dynamic> _$$_UncleInfoToJson(_$_UncleInfo instance) =>
    <String, dynamic>{
      'pickupLocates': instance.pickupLocates.map((e) => e.toJson()).toList(),
      'shipLocates': instance.shipLocates.map((e) => e.toJson()).toList(),
      'amountBySize': instance.amountBySize,
      'amountByWeight': instance.amountByWeight,
    };

_$_LocateAmount _$$_LocateAmountFromJson(Map<String, dynamic> json) =>
    _$_LocateAmount(
      amount: json['amount'] as int,
      locate: Locate.fromJson(json['locate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocateAmountToJson(_$_LocateAmount instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'locate': instance.locate.toJson(),
    };
