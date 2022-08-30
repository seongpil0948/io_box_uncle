// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IoUser _$$_IoUserFromJson(Map<String, dynamic> json) => _$_IoUser(
      userInfo: IoUserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      preferDark: json['preferDark'] as bool,
    );

Map<String, dynamic> _$$_IoUserToJson(_$_IoUser instance) => <String, dynamic>{
      'userInfo': instance.userInfo,
      'preferDark': instance.preferDark,
    };

_$_IoUserInfo _$$_IoUserInfoFromJson(Map<String, dynamic> json) =>
    _$_IoUserInfo(
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
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
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
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
