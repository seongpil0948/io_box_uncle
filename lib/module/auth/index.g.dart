// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IoUser _$$_IoUserFromJson(Map<String, dynamic> json) => _$_IoUser(
      userInfo: IoUserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      companyInfo: json['companyInfo'] == null
          ? null
          : CompanyInfo.fromJson(json['companyInfo'] as Map<String, dynamic>),
      preferDark: json['preferDark'] as bool? ?? false,
      connectState: json['connectState'] as String?,
      workState: json['workState'] as String?,
      uncleInfo: json['uncleInfo'] == null
          ? null
          : UncleInfo.fromJson(json['uncleInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IoUserToJson(_$_IoUser instance) => <String, dynamic>{
      'userInfo': instance.userInfo.toJson(),
      'companyInfo': instance.companyInfo?.toJson(),
      'preferDark': instance.preferDark,
      'connectState': instance.connectState,
      'workState': instance.workState,
      'uncleInfo': instance.uncleInfo?.toJson(),
    };

_$_CompanyInfo _$$_CompanyInfoFromJson(Map<String, dynamic> json) =>
    _$_CompanyInfo(
      companyName: json['companyName'] as String,
      companyNo: json['companyNo'] as String,
      companyCertificate: (json['companyCertificate'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => Locate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      shipLocate: json['shipLocate'] == null
          ? null
          : Locate.fromJson(json['shipLocate'] as Map<String, dynamic>),
      emailTax: json['emailTax'] as String,
      companyPhone: json['companyPhone'] as String,
      shopLink: json['shopLink'] as String?,
      ceoName: json['ceoName'] as String,
      ceoPhone: json['ceoPhone'] as String,
      managerName: json['managerName'] as String,
      managerPhone: json['managerPhone'] as String,
    );

Map<String, dynamic> _$$_CompanyInfoToJson(_$_CompanyInfo instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'companyNo': instance.companyNo,
      'companyCertificate': instance.companyCertificate,
      'locations': instance.locations.map((e) => e.toJson()).toList(),
      'shipLocate': instance.shipLocate?.toJson(),
      'emailTax': instance.emailTax,
      'companyPhone': instance.companyPhone,
      'shopLink': instance.shopLink,
      'ceoName': instance.ceoName,
      'ceoPhone': instance.ceoPhone,
      'managerName': instance.managerName,
      'managerPhone': instance.managerPhone,
    };

_$_IoUserInfo _$$_IoUserInfoFromJson(Map<String, dynamic> json) =>
    _$_IoUserInfo(
      createdAt: toDateTime(json['createdAt']),
      updatedAt: toDateTime(json['updatedAt']),
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      displayName: json['displayName'] as String?,
      providerId: json['providerId'] as String?,
      email: json['email'] as String?,
      account: json['account'] == null
          ? null
          : IoAccount.fromJson(json['account'] as Map<String, dynamic>),
      emailVerified: json['emailVerified'] as bool,
      profileImg: json['profileImg'] as String?,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      fcmTokens: (json['fcmTokens'] as List<dynamic>?)
              ?.map((e) => FcmToken.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      'createdAt': toTimeStamp(instance.createdAt),
      'updatedAt': toTimeStamp(instance.updatedAt),
      'userId': instance.userId,
      'userName': instance.userName,
      'displayName': instance.displayName,
      'providerId': instance.providerId,
      'email': instance.email,
      'account': instance.account?.toJson(),
      'emailVerified': instance.emailVerified,
      'profileImg': instance.profileImg,
      'role': _$UserRoleEnumMap[instance.role]!,
      'fcmTokens': instance.fcmTokens.map((e) => e.toJson()).toList(),
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

_$_IoAccount _$$_IoAccountFromJson(Map<String, dynamic> json) => _$_IoAccount(
      accountName: json['accountName'] as String,
      accountNumber: json['accountNumber'] as String,
      bank: json['bank'] as String,
    );

Map<String, dynamic> _$$_IoAccountToJson(_$_IoAccount instance) =>
    <String, dynamic>{
      'accountName': instance.accountName,
      'accountNumber': instance.accountNumber,
      'bank': instance.bank,
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
      shipPendingAmount: json['shipPendingAmount'] as int,
    );

Map<String, dynamic> _$$_UncleInfoToJson(_$_UncleInfo instance) =>
    <String, dynamic>{
      'pickupLocates': instance.pickupLocates.map((e) => e.toJson()).toList(),
      'shipLocates': instance.shipLocates.map((e) => e.toJson()).toList(),
      'amountBySize': instance.amountBySize,
      'amountByWeight': instance.amountByWeight,
      'shipPendingAmount': instance.shipPendingAmount,
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
