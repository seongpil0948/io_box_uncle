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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoUserCopyWith<IoUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoUserCopyWith<$Res> {
  factory $IoUserCopyWith(IoUser value, $Res Function(IoUser) then) =
      _$IoUserCopyWithImpl<$Res>;
  $Res call({IoUserInfo userInfo, bool preferDark});

  $IoUserInfoCopyWith<$Res> get userInfo;
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
    ));
  }

  @override
  $IoUserInfoCopyWith<$Res> get userInfo {
    return $IoUserInfoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_IoUserCopyWith<$Res> implements $IoUserCopyWith<$Res> {
  factory _$$_IoUserCopyWith(_$_IoUser value, $Res Function(_$_IoUser) then) =
      __$$_IoUserCopyWithImpl<$Res>;
  @override
  $Res call({IoUserInfo userInfo, bool preferDark});

  @override
  $IoUserInfoCopyWith<$Res> get userInfo;
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IoUser implements _IoUser {
  const _$_IoUser({required this.userInfo, required this.preferDark});

  factory _$_IoUser.fromJson(Map<String, dynamic> json) =>
      _$$_IoUserFromJson(json);

  @override
  final IoUserInfo userInfo;
  @override
  final bool preferDark;

  @override
  String toString() {
    return 'IoUser(userInfo: $userInfo, preferDark: $preferDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IoUser &&
            const DeepCollectionEquality().equals(other.userInfo, userInfo) &&
            const DeepCollectionEquality()
                .equals(other.preferDark, preferDark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userInfo),
      const DeepCollectionEquality().hash(preferDark));

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

abstract class _IoUser implements IoUser {
  const factory _IoUser(
      {required final IoUserInfo userInfo,
      required final bool preferDark}) = _$_IoUser;

  factory _IoUser.fromJson(Map<String, dynamic> json) = _$_IoUser.fromJson;

  @override
  IoUserInfo get userInfo;
  @override
  bool get preferDark;
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
