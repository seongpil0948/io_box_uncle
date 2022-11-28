part of './index.dart';

@freezed //  all of this class's properties are immutable.
class IoUser with _$IoUser {
  @JsonSerializable(explicitToJson: true)
  const factory IoUser(
      {required IoUserInfo userInfo,
      @Default(false) bool preferDark,
      String? connectState,
      String? workState,
      UncleInfo? uncleInfo}) = _IoUser;
  String get name => userInfo.displayName ?? userInfo.userName;
  bool get inWork => workState != null && workState == "active";
  const IoUser._();
  factory IoUser.fromJson(Map<String, Object?> json) => _$IoUserFromJson(json);

  Future<bool> update({bool refreshUpdatedAt = true}) async {
    final doc = getCollection(c: IoCollection.users).doc(userInfo.userId);
    final json = refreshUpdatedAt
        ? copyWith(userInfo: userInfo.copyWith(updatedAt: DateTime.now()))
            .toJson()
        : toJson();
    final pref = await SharedPreferences.getInstance();
    pref.setString(AuthRepo.userCacheKey, jsonEncode(json));
    await doc.update(json);
    return true;
  }
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
    String? providerId,
    String? email,
    IoAccount? account,
    required bool emailVerified,
    String? profileImg,
    required UserRole role,
    @Default([]) List<FcmToken> fcmTokens,
    required bool passed,
    String? phone,
    String? managerId,
    List<String>? workerIds,
    String? uncleId,
  }) = _IoUserInfo;

  factory IoUserInfo.fromJson(Map<String, Object?> json) =>
      _$IoUserInfoFromJson(json);
}

@freezed
class IoAccount with _$IoAccount {
  @JsonSerializable(explicitToJson: true)
  const factory IoAccount({
    required String accountName,
    required String accountNumber,
    required String bank,
  }) = _IoAccount;

  factory IoAccount.fromJson(Map<String, Object?> json) =>
      _$IoAccountFromJson(json);
}

@freezed
class UncleInfo with _$UncleInfo {
  @JsonSerializable(explicitToJson: true)
  const factory UncleInfo({
    required List<LocateAmount> pickupLocates,
    required List<LocateAmount> shipLocates,
    required Map<String, int> amountBySize,
    required Map<String, int> amountByWeight,
  }) = _UncleInfo;

  factory UncleInfo.fromJson(Map<String, Object?> json) =>
      _$UncleInfoFromJson(json);
}

@freezed
class LocateAmount with _$LocateAmount {
  @JsonSerializable(explicitToJson: true)
  const factory LocateAmount({required int amount, required Locate locate}) =
      _LocateAmount;

  factory LocateAmount.fromJson(Map<String, Object?> json) =>
      _$LocateAmountFromJson(json);
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
