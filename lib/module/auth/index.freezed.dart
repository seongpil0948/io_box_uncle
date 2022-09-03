// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IoUser _$IoUserFromJson(Map<String, dynamic> json) {
  return _IoUser.fromJson(json);
}

/// @nodoc
mixin _$IoUser {
  IoUserInfo get userInfo => throw _privateConstructorUsedError;
  bool get preferDark => throw _privateConstructorUsedError;
  UncleInfo? get uncleInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoUserCopyWith<IoUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoUserCopyWith<$Res> {
  factory $IoUserCopyWith(IoUser value, $Res Function(IoUser) then) =
      _$IoUserCopyWithImpl<$Res>;
  $Res call({IoUserInfo userInfo, bool preferDark, UncleInfo? uncleInfo});

  $IoUserInfoCopyWith<$Res> get userInfo;
  $UncleInfoCopyWith<$Res>? get uncleInfo;
}

/// @nodoc
class _$IoUserCopyWithImpl<$Res> implements $IoUserCopyWith<$Res> {
  _$IoUserCopyWithImpl(this._value, this._then);

  final IoUser _value;
  // ignore: unused_field
  final $Res Function(IoUser) _then;

  @override
  $Res call({
    Object? userInfo = freezed,
    Object? preferDark = freezed,
    Object? uncleInfo = freezed,
  }) {
    return _then(_value.copyWith(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as IoUserInfo,
      preferDark: preferDark == freezed
          ? _value.preferDark
          : preferDark // ignore: cast_nullable_to_non_nullable
              as bool,
      uncleInfo: uncleInfo == freezed
          ? _value.uncleInfo
          : uncleInfo // ignore: cast_nullable_to_non_nullable
              as UncleInfo?,
    ));
  }

  @override
  $IoUserInfoCopyWith<$Res> get userInfo {
    return $IoUserInfoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }

  @override
  $UncleInfoCopyWith<$Res>? get uncleInfo {
    if (_value.uncleInfo == null) {
      return null;
    }

    return $UncleInfoCopyWith<$Res>(_value.uncleInfo!, (value) {
      return _then(_value.copyWith(uncleInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_IoUserCopyWith<$Res> implements $IoUserCopyWith<$Res> {
  factory _$$_IoUserCopyWith(_$_IoUser value, $Res Function(_$_IoUser) then) =
      __$$_IoUserCopyWithImpl<$Res>;
  @override
  $Res call({IoUserInfo userInfo, bool preferDark, UncleInfo? uncleInfo});

  @override
  $IoUserInfoCopyWith<$Res> get userInfo;
  @override
  $UncleInfoCopyWith<$Res>? get uncleInfo;
}

/// @nodoc
class __$$_IoUserCopyWithImpl<$Res> extends _$IoUserCopyWithImpl<$Res>
    implements _$$_IoUserCopyWith<$Res> {
  __$$_IoUserCopyWithImpl(_$_IoUser _value, $Res Function(_$_IoUser) _then)
      : super(_value, (v) => _then(v as _$_IoUser));

  @override
  _$_IoUser get _value => super._value as _$_IoUser;

  @override
  $Res call({
    Object? userInfo = freezed,
    Object? preferDark = freezed,
    Object? uncleInfo = freezed,
  }) {
    return _then(_$_IoUser(
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as IoUserInfo,
      preferDark: preferDark == freezed
          ? _value.preferDark
          : preferDark // ignore: cast_nullable_to_non_nullable
              as bool,
      uncleInfo: uncleInfo == freezed
          ? _value.uncleInfo
          : uncleInfo // ignore: cast_nullable_to_non_nullable
              as UncleInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IoUser extends _IoUser {
  const _$_IoUser(
      {required this.userInfo, required this.preferDark, this.uncleInfo})
      : super._();

  factory _$_IoUser.fromJson(Map<String, dynamic> json) =>
      _$$_IoUserFromJson(json);

  @override
  final IoUserInfo userInfo;
  @override
  final bool preferDark;
  @override
  final UncleInfo? uncleInfo;

  @override
  String toString() {
    return 'IoUser(userInfo: $userInfo, preferDark: $preferDark, uncleInfo: $uncleInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IoUser &&
            const DeepCollectionEquality().equals(other.userInfo, userInfo) &&
            const DeepCollectionEquality()
                .equals(other.preferDark, preferDark) &&
            const DeepCollectionEquality().equals(other.uncleInfo, uncleInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userInfo),
      const DeepCollectionEquality().hash(preferDark),
      const DeepCollectionEquality().hash(uncleInfo));

  @JsonKey(ignore: true)
  @override
  _$$_IoUserCopyWith<_$_IoUser> get copyWith =>
      __$$_IoUserCopyWithImpl<_$_IoUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IoUserToJson(
      this,
    );
  }
}

abstract class _IoUser extends IoUser {
  const factory _IoUser(
      {required final IoUserInfo userInfo,
      required final bool preferDark,
      final UncleInfo? uncleInfo}) = _$_IoUser;
  const _IoUser._() : super._();

  factory _IoUser.fromJson(Map<String, dynamic> json) = _$_IoUser.fromJson;

  @override
  IoUserInfo get userInfo;
  @override
  bool get preferDark;
  @override
  UncleInfo? get uncleInfo;
  @override
  @JsonKey(ignore: true)
  _$$_IoUserCopyWith<_$_IoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

IoUserInfo _$IoUserInfoFromJson(Map<String, dynamic> json) {
  return _IoUserInfo.fromJson(json);
}

/// @nodoc
mixin _$IoUserInfo {
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  String? get profileImg => throw _privateConstructorUsedError;
  UserRole get role => throw _privateConstructorUsedError;
  List<String> get fcmTokens => throw _privateConstructorUsedError;
  bool get passed => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get managerId => throw _privateConstructorUsedError;
  List<String>? get workerIds => throw _privateConstructorUsedError;
  String? get uncleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoUserInfoCopyWith<IoUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoUserInfoCopyWith<$Res> {
  factory $IoUserInfoCopyWith(
          IoUserInfo value, $Res Function(IoUserInfo) then) =
      _$IoUserInfoCopyWithImpl<$Res>;
  $Res call(
      {DateTime? createdAt,
      DateTime? updatedAt,
      String userId,
      String userName,
      String? displayName,
      String? email,
      bool emailVerified,
      String? profileImg,
      UserRole role,
      List<String> fcmTokens,
      bool passed,
      String? phone,
      String? managerId,
      List<String>? workerIds,
      String? uncleId});
}

/// @nodoc
class _$IoUserInfoCopyWithImpl<$Res> implements $IoUserInfoCopyWith<$Res> {
  _$IoUserInfoCopyWithImpl(this._value, this._then);

  final IoUserInfo _value;
  // ignore: unused_field
  final $Res Function(IoUserInfo) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? profileImg = freezed,
    Object? role = freezed,
    Object? fcmTokens = freezed,
    Object? passed = freezed,
    Object? phone = freezed,
    Object? managerId = freezed,
    Object? workerIds = freezed,
    Object? uncleId = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImg: profileImg == freezed
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      fcmTokens: fcmTokens == freezed
          ? _value.fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      passed: passed == freezed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: managerId == freezed
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      workerIds: workerIds == freezed
          ? _value.workerIds
          : workerIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      uncleId: uncleId == freezed
          ? _value.uncleId
          : uncleId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_IoUserInfoCopyWith<$Res>
    implements $IoUserInfoCopyWith<$Res> {
  factory _$$_IoUserInfoCopyWith(
          _$_IoUserInfo value, $Res Function(_$_IoUserInfo) then) =
      __$$_IoUserInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? createdAt,
      DateTime? updatedAt,
      String userId,
      String userName,
      String? displayName,
      String? email,
      bool emailVerified,
      String? profileImg,
      UserRole role,
      List<String> fcmTokens,
      bool passed,
      String? phone,
      String? managerId,
      List<String>? workerIds,
      String? uncleId});
}

/// @nodoc
class __$$_IoUserInfoCopyWithImpl<$Res> extends _$IoUserInfoCopyWithImpl<$Res>
    implements _$$_IoUserInfoCopyWith<$Res> {
  __$$_IoUserInfoCopyWithImpl(
      _$_IoUserInfo _value, $Res Function(_$_IoUserInfo) _then)
      : super(_value, (v) => _then(v as _$_IoUserInfo));

  @override
  _$_IoUserInfo get _value => super._value as _$_IoUserInfo;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? profileImg = freezed,
    Object? role = freezed,
    Object? fcmTokens = freezed,
    Object? passed = freezed,
    Object? phone = freezed,
    Object? managerId = freezed,
    Object? workerIds = freezed,
    Object? uncleId = freezed,
  }) {
    return _then(_$_IoUserInfo(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImg: profileImg == freezed
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      fcmTokens: fcmTokens == freezed
          ? _value._fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      passed: passed == freezed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: managerId == freezed
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      workerIds: workerIds == freezed
          ? _value._workerIds
          : workerIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      uncleId: uncleId == freezed
          ? _value.uncleId
          : uncleId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IoUserInfo implements _IoUserInfo {
  const _$_IoUserInfo(
      {this.createdAt,
      this.updatedAt,
      required this.userId,
      required this.userName,
      this.displayName,
      this.email,
      required this.emailVerified,
      this.profileImg,
      required this.role,
      required final List<String> fcmTokens,
      required this.passed,
      this.phone,
      this.managerId,
      final List<String>? workerIds,
      this.uncleId})
      : _fcmTokens = fcmTokens,
        _workerIds = workerIds;

  factory _$_IoUserInfo.fromJson(Map<String, dynamic> json) =>
      _$$_IoUserInfoFromJson(json);

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final bool emailVerified;
  @override
  final String? profileImg;
  @override
  final UserRole role;
  final List<String> _fcmTokens;
  @override
  List<String> get fcmTokens {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fcmTokens);
  }

  @override
  final bool passed;
  @override
  final String? phone;
  @override
  final String? managerId;
  final List<String>? _workerIds;
  @override
  List<String>? get workerIds {
    final value = _workerIds;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? uncleId;

  @override
  String toString() {
    return 'IoUserInfo(createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, userName: $userName, displayName: $displayName, email: $email, emailVerified: $emailVerified, profileImg: $profileImg, role: $role, fcmTokens: $fcmTokens, passed: $passed, phone: $phone, managerId: $managerId, workerIds: $workerIds, uncleId: $uncleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IoUserInfo &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.emailVerified, emailVerified) &&
            const DeepCollectionEquality()
                .equals(other.profileImg, profileImg) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other._fcmTokens, _fcmTokens) &&
            const DeepCollectionEquality().equals(other.passed, passed) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.managerId, managerId) &&
            const DeepCollectionEquality()
                .equals(other._workerIds, _workerIds) &&
            const DeepCollectionEquality().equals(other.uncleId, uncleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(emailVerified),
      const DeepCollectionEquality().hash(profileImg),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(_fcmTokens),
      const DeepCollectionEquality().hash(passed),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(managerId),
      const DeepCollectionEquality().hash(_workerIds),
      const DeepCollectionEquality().hash(uncleId));

  @JsonKey(ignore: true)
  @override
  _$$_IoUserInfoCopyWith<_$_IoUserInfo> get copyWith =>
      __$$_IoUserInfoCopyWithImpl<_$_IoUserInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IoUserInfoToJson(
      this,
    );
  }
}

abstract class _IoUserInfo implements IoUserInfo {
  const factory _IoUserInfo(
      {final DateTime? createdAt,
      final DateTime? updatedAt,
      required final String userId,
      required final String userName,
      final String? displayName,
      final String? email,
      required final bool emailVerified,
      final String? profileImg,
      required final UserRole role,
      required final List<String> fcmTokens,
      required final bool passed,
      final String? phone,
      final String? managerId,
      final List<String>? workerIds,
      final String? uncleId}) = _$_IoUserInfo;

  factory _IoUserInfo.fromJson(Map<String, dynamic> json) =
      _$_IoUserInfo.fromJson;

  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String? get displayName;
  @override
  String? get email;
  @override
  bool get emailVerified;
  @override
  String? get profileImg;
  @override
  UserRole get role;
  @override
  List<String> get fcmTokens;
  @override
  bool get passed;
  @override
  String? get phone;
  @override
  String? get managerId;
  @override
  List<String>? get workerIds;
  @override
  String? get uncleId;
  @override
  @JsonKey(ignore: true)
  _$$_IoUserInfoCopyWith<_$_IoUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

UncleInfo _$UncleInfoFromJson(Map<String, dynamic> json) {
  return _UncleInfo.fromJson(json);
}

/// @nodoc
mixin _$UncleInfo {
  List<LocateAmount> get pickupLocates => throw _privateConstructorUsedError;
  List<LocateAmount> get shipLocates => throw _privateConstructorUsedError;
  Map<String, int> get amountBySize => throw _privateConstructorUsedError;
  Map<String, int> get amountByWeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UncleInfoCopyWith<UncleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UncleInfoCopyWith<$Res> {
  factory $UncleInfoCopyWith(UncleInfo value, $Res Function(UncleInfo) then) =
      _$UncleInfoCopyWithImpl<$Res>;
  $Res call(
      {List<LocateAmount> pickupLocates,
      List<LocateAmount> shipLocates,
      Map<String, int> amountBySize,
      Map<String, int> amountByWeight});
}

/// @nodoc
class _$UncleInfoCopyWithImpl<$Res> implements $UncleInfoCopyWith<$Res> {
  _$UncleInfoCopyWithImpl(this._value, this._then);

  final UncleInfo _value;
  // ignore: unused_field
  final $Res Function(UncleInfo) _then;

  @override
  $Res call({
    Object? pickupLocates = freezed,
    Object? shipLocates = freezed,
    Object? amountBySize = freezed,
    Object? amountByWeight = freezed,
  }) {
    return _then(_value.copyWith(
      pickupLocates: pickupLocates == freezed
          ? _value.pickupLocates
          : pickupLocates // ignore: cast_nullable_to_non_nullable
              as List<LocateAmount>,
      shipLocates: shipLocates == freezed
          ? _value.shipLocates
          : shipLocates // ignore: cast_nullable_to_non_nullable
              as List<LocateAmount>,
      amountBySize: amountBySize == freezed
          ? _value.amountBySize
          : amountBySize // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      amountByWeight: amountByWeight == freezed
          ? _value.amountByWeight
          : amountByWeight // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_UncleInfoCopyWith<$Res> implements $UncleInfoCopyWith<$Res> {
  factory _$$_UncleInfoCopyWith(
          _$_UncleInfo value, $Res Function(_$_UncleInfo) then) =
      __$$_UncleInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<LocateAmount> pickupLocates,
      List<LocateAmount> shipLocates,
      Map<String, int> amountBySize,
      Map<String, int> amountByWeight});
}

/// @nodoc
class __$$_UncleInfoCopyWithImpl<$Res> extends _$UncleInfoCopyWithImpl<$Res>
    implements _$$_UncleInfoCopyWith<$Res> {
  __$$_UncleInfoCopyWithImpl(
      _$_UncleInfo _value, $Res Function(_$_UncleInfo) _then)
      : super(_value, (v) => _then(v as _$_UncleInfo));

  @override
  _$_UncleInfo get _value => super._value as _$_UncleInfo;

  @override
  $Res call({
    Object? pickupLocates = freezed,
    Object? shipLocates = freezed,
    Object? amountBySize = freezed,
    Object? amountByWeight = freezed,
  }) {
    return _then(_$_UncleInfo(
      pickupLocates: pickupLocates == freezed
          ? _value._pickupLocates
          : pickupLocates // ignore: cast_nullable_to_non_nullable
              as List<LocateAmount>,
      shipLocates: shipLocates == freezed
          ? _value._shipLocates
          : shipLocates // ignore: cast_nullable_to_non_nullable
              as List<LocateAmount>,
      amountBySize: amountBySize == freezed
          ? _value._amountBySize
          : amountBySize // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      amountByWeight: amountByWeight == freezed
          ? _value._amountByWeight
          : amountByWeight // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UncleInfo implements _UncleInfo {
  const _$_UncleInfo(
      {required final List<LocateAmount> pickupLocates,
      required final List<LocateAmount> shipLocates,
      required final Map<String, int> amountBySize,
      required final Map<String, int> amountByWeight})
      : _pickupLocates = pickupLocates,
        _shipLocates = shipLocates,
        _amountBySize = amountBySize,
        _amountByWeight = amountByWeight;

  factory _$_UncleInfo.fromJson(Map<String, dynamic> json) =>
      _$$_UncleInfoFromJson(json);

  final List<LocateAmount> _pickupLocates;
  @override
  List<LocateAmount> get pickupLocates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pickupLocates);
  }

  final List<LocateAmount> _shipLocates;
  @override
  List<LocateAmount> get shipLocates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shipLocates);
  }

  final Map<String, int> _amountBySize;
  @override
  Map<String, int> get amountBySize {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_amountBySize);
  }

  final Map<String, int> _amountByWeight;
  @override
  Map<String, int> get amountByWeight {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_amountByWeight);
  }

  @override
  String toString() {
    return 'UncleInfo(pickupLocates: $pickupLocates, shipLocates: $shipLocates, amountBySize: $amountBySize, amountByWeight: $amountByWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UncleInfo &&
            const DeepCollectionEquality()
                .equals(other._pickupLocates, _pickupLocates) &&
            const DeepCollectionEquality()
                .equals(other._shipLocates, _shipLocates) &&
            const DeepCollectionEquality()
                .equals(other._amountBySize, _amountBySize) &&
            const DeepCollectionEquality()
                .equals(other._amountByWeight, _amountByWeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pickupLocates),
      const DeepCollectionEquality().hash(_shipLocates),
      const DeepCollectionEquality().hash(_amountBySize),
      const DeepCollectionEquality().hash(_amountByWeight));

  @JsonKey(ignore: true)
  @override
  _$$_UncleInfoCopyWith<_$_UncleInfo> get copyWith =>
      __$$_UncleInfoCopyWithImpl<_$_UncleInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UncleInfoToJson(
      this,
    );
  }
}

abstract class _UncleInfo implements UncleInfo {
  const factory _UncleInfo(
      {required final List<LocateAmount> pickupLocates,
      required final List<LocateAmount> shipLocates,
      required final Map<String, int> amountBySize,
      required final Map<String, int> amountByWeight}) = _$_UncleInfo;

  factory _UncleInfo.fromJson(Map<String, dynamic> json) =
      _$_UncleInfo.fromJson;

  @override
  List<LocateAmount> get pickupLocates;
  @override
  List<LocateAmount> get shipLocates;
  @override
  Map<String, int> get amountBySize;
  @override
  Map<String, int> get amountByWeight;
  @override
  @JsonKey(ignore: true)
  _$$_UncleInfoCopyWith<_$_UncleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

LocateAmount _$LocateAmountFromJson(Map<String, dynamic> json) {
  return _LocateAmount.fromJson(json);
}

/// @nodoc
mixin _$LocateAmount {
  int get amount => throw _privateConstructorUsedError;
  Locate get locate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocateAmountCopyWith<LocateAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocateAmountCopyWith<$Res> {
  factory $LocateAmountCopyWith(
          LocateAmount value, $Res Function(LocateAmount) then) =
      _$LocateAmountCopyWithImpl<$Res>;
  $Res call({int amount, Locate locate});

  $LocateCopyWith<$Res> get locate;
}

/// @nodoc
class _$LocateAmountCopyWithImpl<$Res> implements $LocateAmountCopyWith<$Res> {
  _$LocateAmountCopyWithImpl(this._value, this._then);

  final LocateAmount _value;
  // ignore: unused_field
  final $Res Function(LocateAmount) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? locate = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      locate: locate == freezed
          ? _value.locate
          : locate // ignore: cast_nullable_to_non_nullable
              as Locate,
    ));
  }

  @override
  $LocateCopyWith<$Res> get locate {
    return $LocateCopyWith<$Res>(_value.locate, (value) {
      return _then(_value.copyWith(locate: value));
    });
  }
}

/// @nodoc
abstract class _$$_LocateAmountCopyWith<$Res>
    implements $LocateAmountCopyWith<$Res> {
  factory _$$_LocateAmountCopyWith(
          _$_LocateAmount value, $Res Function(_$_LocateAmount) then) =
      __$$_LocateAmountCopyWithImpl<$Res>;
  @override
  $Res call({int amount, Locate locate});

  @override
  $LocateCopyWith<$Res> get locate;
}

/// @nodoc
class __$$_LocateAmountCopyWithImpl<$Res>
    extends _$LocateAmountCopyWithImpl<$Res>
    implements _$$_LocateAmountCopyWith<$Res> {
  __$$_LocateAmountCopyWithImpl(
      _$_LocateAmount _value, $Res Function(_$_LocateAmount) _then)
      : super(_value, (v) => _then(v as _$_LocateAmount));

  @override
  _$_LocateAmount get _value => super._value as _$_LocateAmount;

  @override
  $Res call({
    Object? amount = freezed,
    Object? locate = freezed,
  }) {
    return _then(_$_LocateAmount(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      locate: locate == freezed
          ? _value.locate
          : locate // ignore: cast_nullable_to_non_nullable
              as Locate,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LocateAmount implements _LocateAmount {
  const _$_LocateAmount({required this.amount, required this.locate});

  factory _$_LocateAmount.fromJson(Map<String, dynamic> json) =>
      _$$_LocateAmountFromJson(json);

  @override
  final int amount;
  @override
  final Locate locate;

  @override
  String toString() {
    return 'LocateAmount(amount: $amount, locate: $locate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocateAmount &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.locate, locate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(locate));

  @JsonKey(ignore: true)
  @override
  _$$_LocateAmountCopyWith<_$_LocateAmount> get copyWith =>
      __$$_LocateAmountCopyWithImpl<_$_LocateAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocateAmountToJson(
      this,
    );
  }
}

abstract class _LocateAmount implements LocateAmount {
  const factory _LocateAmount(
      {required final int amount,
      required final Locate locate}) = _$_LocateAmount;

  factory _LocateAmount.fromJson(Map<String, dynamic> json) =
      _$_LocateAmount.fromJson;

  @override
  int get amount;
  @override
  Locate get locate;
  @override
  @JsonKey(ignore: true)
  _$$_LocateAmountCopyWith<_$_LocateAmount> get copyWith =>
      throw _privateConstructorUsedError;
}
