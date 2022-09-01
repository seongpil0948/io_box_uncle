part of './index.dart';

@freezed //  all of this class's properties are immutable.
class IoUser with _$IoUser {
  const factory IoUser(
      {required IoUserInfo userInfo, required bool preferDark}) = _IoUser;

  factory IoUser.fromJson(Map<String, Object?> json) => _$IoUserFromJson(json);
}

@freezed //  all of this class's properties are immutable.
class IoUserInfo with _$IoUserInfo {
  @JsonSerializable(explicitToJson: true)
  const factory IoUserInfo({
    DateTime? createdAt,
    DateTime? updatedAt,
    required String userId,
    required String userName,
    String? displayName,
    String? email,
    required bool emailVerified,
    String? profileImg,
    required UserRole role,
    required List<String> fcmTokens,
    required bool passed,
    String? phone,
    String? managerId,
    List<String>? workerIds,
    String? uncleId,
  }) = _IoUserInfo;

  factory IoUserInfo.fromJson(Map<String, Object?> json) =>
      _$IoUserInfoFromJson(json);
}

enum UserRole {
  @JsonValue('SHOP')
  shop,
  @JsonValue('UNCLE')
  uncle,
  @JsonValue('VENDOR')
  vendor,
  @JsonValue('UNCLE_WORKER')
  uncleWorker
}

enum IoBank {
  @JsonValue('NH')
  @JsonValue('농협')
  nh,
  @JsonValue('SHINHAN')
  @JsonValue('신한')
  shinhan,
  @JsonValue('HANA')
  @JsonValue('하나')
  hana,
  @JsonValue('CITY')
  @JsonValue('씨티')
  city,
  @JsonValue('SC_JAIL')
  @JsonValue('제일')
  scJail,
  @JsonValue('KB')
  @JsonValue('국민')
  kbStar
}

enum ShipMethod {
  @JsonValue('UNCLE')
  @JsonValue('엉클')
  uncle,
  @JsonValue('SHIP')
  @JsonValue('택배')
  ship
}
