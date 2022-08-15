part of './index.dart';

class IoUser extends Equatable {
  final IoUserInfo userInfo;
  final CompanyInfo? companyInfo;
  final dynamic operInfo;
  final AccountInfo account;
  final bool preferDark;

  IoUser(Map<String, dynamic> j)
      : userInfo = IoUserInfo.fromJson(j['userInfo']),
        companyInfo = CompanyInfo.fromJson(j['companyInfo']),
        operInfo = j['purchaseMethod'] != null
            ? ShopOperInfo.fromJson(j['operInfo'])
            : VendorOperInfo.fromJson(j['operInfo']),
        account = AccountInfo.fromJson(j['account']),
        preferDark = j['preferDark'];

  Map<String, dynamic> toJson() => {
        "userInfo": userInfo.toJson(),
        "companyInfo": companyInfo?.toJson(),
        "operInfo": operInfo.toJson(),
        "account": account.toJson(),
        "preferDark": preferDark
      };

  Map<String, dynamic> toJsonCache() {
    final j = toJson();
    j['createdAt'] = userInfo.createdAt.toIso8601String();
    j['updatedAt'] = userInfo.updatedAt.toIso8601String();
    return j;
  }

  @override
  List<Object?> get props => [userInfo.userId];
}

class IoUserInfo extends Equatable {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String userId;
  final String userName;
  final String? displayName;
  final String? email;
  final bool emailVerified;
  final String? profileImg;
  final UserRole role;
  final List<String> fcmTokens;
  final bool passed;

  IoUserInfo.fromJson(Map<String, dynamic> j)
      : createdAt = j['createdAt'] ?? DateTime.now(),
        updatedAt = j['updatedAt'] ?? DateTime.now(),
        userId = j['userId'],
        userName = j['userName'],
        displayName = j['displayName'],
        email = j['email'],
        emailVerified = j['emailVerified'],
        profileImg = j['profileImg'],
        fcmTokens = j['fcmTokens'],
        passed = j['passed'],
        role = roleFromString(j['role']);

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "userId": userId,
        "userName": userName,
        "displayName": displayName,
        "email": email,
        "emailVerified": emailVerified,
        "profileImg": profileImg,
        "role": role,
        "fcmTokens": fcmTokens,
        "passed": passed,
      };

  @override
  List<Object?> get props => [userId];
}

class CompanyInfo extends Equatable {
  final String companyName;
  final String companyNo;
  final List<String> companyCertificate;
  final List<Locate> locations;
  final String emailTax;
  final String companyPhone;
  final String? currentAccount;
  final String? shopLink;
  final String ceoName;
  final String ceoPhone;
  final String managerName;
  final String managerPhone;

  CompanyInfo.fromJson(Map<String, dynamic> j)
      : companyName = j["companyName"],
        companyNo = j["companyNo"],
        companyCertificate = List<String>.from(j["companyCertificate"]),
        locations =
            j["locations"].map<Locate>((f) => Locate.fromJson(f)).toList(),
        emailTax = j["emailTax"],
        companyPhone = j["companyPhone"],
        currentAccount = j["currentAccount"],
        shopLink = j["shopLink"],
        ceoName = j["ceoName"],
        ceoPhone = j["ceoPhone"],
        managerName = j["managerName"],
        managerPhone = j["managerPhone"];

  Map<String, dynamic> toJson() => {
        "companyName": companyName,
        "companyNo": companyNo,
        "companyCertificate": companyCertificate,
        "locations": locations,
        "emailTax": emailTax,
        "companyPhone": companyPhone,
        "currentAccount": currentAccount,
        "shopLink": shopLink,
        "ceoName": ceoName,
        "ceoPhone": ceoPhone,
        "managerName": managerName,
        "managerPhone": managerPhone,
      };
  @override
  List<Object?> get props => [companyNo];
}

class ShopOperInfo extends Equatable {
  final String saleAverage;
  final ShipMethod purchaseMethod;
  ShopOperInfo.fromJson(Map<String, dynamic> j)
      : saleAverage = j['saleAverage'],
        purchaseMethod = j['purchaseMethod'];

  Map<String, dynamic> toJson() =>
      {"saleAverage": saleAverage, "purchaseMethod": purchaseMethod};
  @override
  List<Object?> get props => [purchaseMethod, saleAverage];
}

class VendorOperInfo extends Equatable {
  final bool autoOrderApprove;
  final String saleManageType;
  final int taxDeadlineDay;
  final String expectNumProdMonthly;
  VendorOperInfo.fromJson(Map<String, dynamic> j)
      : autoOrderApprove = j['autoOrderApprove'],
        saleManageType = j['saleManageType'],
        taxDeadlineDay = j['taxDeadlineDay'],
        expectNumProdMonthly = j['expectNumProdMonthly'];

  Map<String, dynamic> toJson() => {
        "autoOrderApprove": autoOrderApprove,
        "saleManageType": saleManageType,
        "taxDeadlineDay": taxDeadlineDay,
        "expectNumProdMonthly": expectNumProdMonthly,
      };

  @override
  List<Object?> get props =>
      [autoOrderApprove, saleManageType, taxDeadlineDay, expectNumProdMonthly];
}

class AccountInfo extends Equatable {
  final String userId;
  final String accountNumber;
  final IoBank bank;
  AccountInfo.fromJson(Map<String, dynamic> j)
      : userId = j['userId'],
        accountNumber = j['accountNumber'],
        bank = ioBankFromString(j['bank']);

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "accountNumber": accountNumber,
        "bank": bank,
      };
  @override
  List<Object?> get props => [userId];
}

class Locate {
  final String alias;
  final int? latitude;
  final int? longitude;
  final String? detailLocate;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? postalCode;
  final String country;
  final String? city;
  final LocateType locateType;
  Locate.fromJson(Map<String, dynamic> j)
      : alias = j["alias"],
        latitude = j["latitude"],
        longitude = j["longitude"],
        detailLocate = j["detailLocate"],
        firstName = j["firstName"],
        lastName = j["lastName"],
        phone = j["phone"],
        postalCode = j["postalCode"],
        country = j["country"],
        city = j["city"],
        locateType = locateTypeFromString(j["locateType"]);

  Map<String, dynamic> toJson() => {
        "alias": alias,
        "latitude": latitude,
        "longitude": longitude,
        "detailLocate": detailLocate,
        "firstName": firstName,
        "lastName": lastName,
        "phone": phone,
        "postalCode": postalCode,
        "country": country,
        "city": city,
        "locateType": locateType,
      };
}

enum IoBank { nh, shinhan, hana, city, scJail, kbStar }

extension IoBankExtension on IoBank {
  String get toKoString {
    switch (this) {
      case IoBank.nh:
        return "농협";
      case IoBank.shinhan:
        return "신한";
      case IoBank.hana:
        return "하나";
      case IoBank.city:
        return "시티";
      case IoBank.scJail:
        return "SC제일";
      case IoBank.kbStar:
        return "국민";
    }
  }
}

IoBank ioBankFromString(String str) {
  switch (str) {
    case "농협":
      return IoBank.nh;
    case "신한":
      return IoBank.shinhan;
    case "하나":
      return IoBank.hana;
    case "시티":
      return IoBank.city;
    case "SC제일":
      return IoBank.scJail;
    case "국민":
      return IoBank.kbStar;
    default:
      throw ArgumentError("not Matched $str");
  }
}

enum ShipMethod { uncle, ship }

extension ShipMethodExtension on ShipMethod {
  String get toKoString {
    switch (this) {
      case ShipMethod.uncle:
        return "엉클";
      case ShipMethod.ship:
        return "택배";
    }
  }
}

ShipMethod shipMethodFromString(String str) {
  switch (str) {
    case "엉클":
      return ShipMethod.uncle;
    case "택배":
      return ShipMethod.ship;
    default:
      throw ArgumentError("not Matched $str");
  }
}

enum LocateType { shop, storage, etc }

extension LocateTypeExtension on LocateType {
  String get toKoString {
    switch (this) {
      case LocateType.shop:
        return "매장";
      case LocateType.storage:
        return "창고";
      case LocateType.etc:
        return "기타";
    }
  }
}

LocateType locateTypeFromString(String str) {
  switch (str) {
    case "매장":
      return LocateType.shop;
    case "창고":
      return LocateType.storage;
    case "기타":
      return LocateType.etc;
    default:
      throw ArgumentError("not Matched $str");
  }
}

enum UserRole { shop, uncle, vendor }

extension UserRoleExtension on UserRole {
  String get toKoString {
    switch (this) {
      case UserRole.shop:
        return "SHOP";
      case UserRole.uncle:
        return "UNCLE";
      case UserRole.vendor:
        return "VENDOR";
    }
  }
}

UserRole roleFromString(String str) {
  switch (str) {
    case "SHOP":
      return UserRole.shop;
    case "UNCLE":
      return UserRole.uncle;
    case "VENDOR":
      return UserRole.vendor;
    default:
      throw ArgumentError("not Matched $str");
  }
}
