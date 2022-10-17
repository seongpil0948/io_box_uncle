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
      _$IoUserCopyWithImpl<$Res, IoUser>;
  @useResult
  $Res call({IoUserInfo userInfo, bool preferDark, UncleInfo? uncleInfo});

  $IoUserInfoCopyWith<$Res> get userInfo;
  $UncleInfoCopyWith<$Res>? get uncleInfo;
}

/// @nodoc
class _$IoUserCopyWithImpl<$Res, $Val extends IoUser>
    implements $IoUserCopyWith<$Res> {
  _$IoUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
    Object? preferDark = null,
    Object? uncleInfo = freezed,
  }) {
    return _then(_value.copyWith(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as IoUserInfo,
      preferDark: null == preferDark
          ? _value.preferDark
          : preferDark // ignore: cast_nullable_to_non_nullable
              as bool,
      uncleInfo: freezed == uncleInfo
          ? _value.uncleInfo
          : uncleInfo // ignore: cast_nullable_to_non_nullable
              as UncleInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IoUserInfoCopyWith<$Res> get userInfo {
    return $IoUserInfoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UncleInfoCopyWith<$Res>? get uncleInfo {
    if (_value.uncleInfo == null) {
      return null;
    }

    return $UncleInfoCopyWith<$Res>(_value.uncleInfo!, (value) {
      return _then(_value.copyWith(uncleInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IoUserCopyWith<$Res> implements $IoUserCopyWith<$Res> {
  factory _$$_IoUserCopyWith(_$_IoUser value, $Res Function(_$_IoUser) then) =
      __$$_IoUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IoUserInfo userInfo, bool preferDark, UncleInfo? uncleInfo});

  @override
  $IoUserInfoCopyWith<$Res> get userInfo;
  @override
  $UncleInfoCopyWith<$Res>? get uncleInfo;
}

/// @nodoc
class __$$_IoUserCopyWithImpl<$Res>
    extends _$IoUserCopyWithImpl<$Res, _$_IoUser>
    implements _$$_IoUserCopyWith<$Res> {
  __$$_IoUserCopyWithImpl(_$_IoUser _value, $Res Function(_$_IoUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
    Object? preferDark = null,
    Object? uncleInfo = freezed,
  }) {
    return _then(_$_IoUser(
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as IoUserInfo,
      preferDark: null == preferDark
          ? _value.preferDark
          : preferDark // ignore: cast_nullable_to_non_nullable
              as bool,
      uncleInfo: freezed == uncleInfo
          ? _value.uncleInfo
          : uncleInfo // ignore: cast_nullable_to_non_nullable
              as UncleInfo?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IoUser extends _IoUser with DiagnosticableTreeMixin {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IoUser(userInfo: $userInfo, preferDark: $preferDark, uncleInfo: $uncleInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IoUser'))
      ..add(DiagnosticsProperty('userInfo', userInfo))
      ..add(DiagnosticsProperty('preferDark', preferDark))
      ..add(DiagnosticsProperty('uncleInfo', uncleInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IoUser &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.preferDark, preferDark) ||
                other.preferDark == preferDark) &&
            (identical(other.uncleInfo, uncleInfo) ||
                other.uncleInfo == uncleInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userInfo, preferDark, uncleInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  List<FcmToken> get fcmTokens => throw _privateConstructorUsedError;
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
      _$IoUserInfoCopyWithImpl<$Res, IoUserInfo>;
  @useResult
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
      List<FcmToken> fcmTokens,
      bool passed,
      String? phone,
      String? managerId,
      List<String>? workerIds,
      String? uncleId});
}

/// @nodoc
class _$IoUserInfoCopyWithImpl<$Res, $Val extends IoUserInfo>
    implements $IoUserInfoCopyWith<$Res> {
  _$IoUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = null,
    Object? userName = null,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? emailVerified = null,
    Object? profileImg = freezed,
    Object? role = null,
    Object? fcmTokens = null,
    Object? passed = null,
    Object? phone = freezed,
    Object? managerId = freezed,
    Object? workerIds = freezed,
    Object? uncleId = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      fcmTokens: null == fcmTokens
          ? _value.fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<FcmToken>,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      workerIds: freezed == workerIds
          ? _value.workerIds
          : workerIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      uncleId: freezed == uncleId
          ? _value.uncleId
          : uncleId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IoUserInfoCopyWith<$Res>
    implements $IoUserInfoCopyWith<$Res> {
  factory _$$_IoUserInfoCopyWith(
          _$_IoUserInfo value, $Res Function(_$_IoUserInfo) then) =
      __$$_IoUserInfoCopyWithImpl<$Res>;
  @override
  @useResult
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
      List<FcmToken> fcmTokens,
      bool passed,
      String? phone,
      String? managerId,
      List<String>? workerIds,
      String? uncleId});
}

/// @nodoc
class __$$_IoUserInfoCopyWithImpl<$Res>
    extends _$IoUserInfoCopyWithImpl<$Res, _$_IoUserInfo>
    implements _$$_IoUserInfoCopyWith<$Res> {
  __$$_IoUserInfoCopyWithImpl(
      _$_IoUserInfo _value, $Res Function(_$_IoUserInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userId = null,
    Object? userName = null,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? emailVerified = null,
    Object? profileImg = freezed,
    Object? role = null,
    Object? fcmTokens = null,
    Object? passed = null,
    Object? phone = freezed,
    Object? managerId = freezed,
    Object? workerIds = freezed,
    Object? uncleId = freezed,
  }) {
    return _then(_$_IoUserInfo(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
      fcmTokens: null == fcmTokens
          ? _value._fcmTokens
          : fcmTokens // ignore: cast_nullable_to_non_nullable
              as List<FcmToken>,
      passed: null == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      workerIds: freezed == workerIds
          ? _value._workerIds
          : workerIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      uncleId: freezed == uncleId
          ? _value.uncleId
          : uncleId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IoUserInfo with DiagnosticableTreeMixin implements _IoUserInfo {
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
      final List<FcmToken> fcmTokens = const [],
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
  final List<FcmToken> _fcmTokens;
  @override
  @JsonKey()
  List<FcmToken> get fcmTokens {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IoUserInfo(createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, userName: $userName, displayName: $displayName, email: $email, emailVerified: $emailVerified, profileImg: $profileImg, role: $role, fcmTokens: $fcmTokens, passed: $passed, phone: $phone, managerId: $managerId, workerIds: $workerIds, uncleId: $uncleId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IoUserInfo'))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('emailVerified', emailVerified))
      ..add(DiagnosticsProperty('profileImg', profileImg))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('fcmTokens', fcmTokens))
      ..add(DiagnosticsProperty('passed', passed))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('managerId', managerId))
      ..add(DiagnosticsProperty('workerIds', workerIds))
      ..add(DiagnosticsProperty('uncleId', uncleId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IoUserInfo &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._fcmTokens, _fcmTokens) &&
            (identical(other.passed, passed) || other.passed == passed) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            const DeepCollectionEquality()
                .equals(other._workerIds, _workerIds) &&
            (identical(other.uncleId, uncleId) || other.uncleId == uncleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      updatedAt,
      userId,
      userName,
      displayName,
      email,
      emailVerified,
      profileImg,
      role,
      const DeepCollectionEquality().hash(_fcmTokens),
      passed,
      phone,
      managerId,
      const DeepCollectionEquality().hash(_workerIds),
      uncleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      final List<FcmToken> fcmTokens,
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
  List<FcmToken> get fcmTokens;
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
      _$UncleInfoCopyWithImpl<$Res, UncleInfo>;
  @useResult
  $Res call(
      {List<LocateAmount> pickupLocates,
      List<LocateAmount> shipLocates,
      Map<String, int> amountBySize,
      Map<String, int> amountByWeight});
}

/// @nodoc
class _$UncleInfoCopyWithImpl<$Res, $Val extends UncleInfo>
    implements $UncleInfoCopyWith<$Res> {
  _$UncleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocates = null,
    Object? shipLocates = null,
    Object? amountBySize = null,
    Object? amountByWeight = null,
  }) {
    return _then(_value.copyWith(
      pickupLocates: null == pickupLocates
          ? _value.pickupLocates
          : pickupLocates // ignore: cast_nullable_to_non_nullable
              as List<LocateAmount>,
      shipLocates: null == shipLocates
          ? _value.shipLocates
          : shipLocates // ignore: cast_nullable_to_non_nullable
              as List<LocateAmount>,
      amountBySize: null == amountBySize
          ? _value.amountBySize
          : amountBySize // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      amountByWeight: null == amountByWeight
          ? _value.amountByWeight
          : amountByWeight // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UncleInfoCopyWith<$Res> implements $UncleInfoCopyWith<$Res> {
  factory _$$_UncleInfoCopyWith(
          _$_UncleInfo value, $Res Function(_$_UncleInfo) then) =
      __$$_UncleInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LocateAmount> pickupLocates,
      List<LocateAmount> shipLocates,
      Map<String, int> amountBySize,
      Map<String, int> amountByWeight});
}

/// @nodoc
class __$$_UncleInfoCopyWithImpl<$Res>
    extends _$UncleInfoCopyWithImpl<$Res, _$_UncleInfo>
    implements _$$_UncleInfoCopyWith<$Res> {
  __$$_UncleInfoCopyWithImpl(
      _$_UncleInfo _value, $Res Function(_$_UncleInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocates = null,
    Object? shipLocates = null,
    Object? amountBySize = null,
    Object? amountByWeight = null,
  }) {
    return _then(_$_UncleInfo(
      pickupLocates: null == pickupLocates
          ? _value._pickupLocates
          : pickupLocates // ignore: cast_nullable_to_non_nullable
              as List<LocateAmount>,
      shipLocates: null == shipLocates
          ? _value._shipLocates
          : shipLocates // ignore: cast_nullable_to_non_nullable
              as List<LocateAmount>,
      amountBySize: null == amountBySize
          ? _value._amountBySize
          : amountBySize // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      amountByWeight: null == amountByWeight
          ? _value._amountByWeight
          : amountByWeight // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UncleInfo with DiagnosticableTreeMixin implements _UncleInfo {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UncleInfo(pickupLocates: $pickupLocates, shipLocates: $shipLocates, amountBySize: $amountBySize, amountByWeight: $amountByWeight)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UncleInfo'))
      ..add(DiagnosticsProperty('pickupLocates', pickupLocates))
      ..add(DiagnosticsProperty('shipLocates', shipLocates))
      ..add(DiagnosticsProperty('amountBySize', amountBySize))
      ..add(DiagnosticsProperty('amountByWeight', amountByWeight));
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
  @pragma('vm:prefer-inline')
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
      _$LocateAmountCopyWithImpl<$Res, LocateAmount>;
  @useResult
  $Res call({int amount, Locate locate});

  $LocateCopyWith<$Res> get locate;
}

/// @nodoc
class _$LocateAmountCopyWithImpl<$Res, $Val extends LocateAmount>
    implements $LocateAmountCopyWith<$Res> {
  _$LocateAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? locate = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      locate: null == locate
          ? _value.locate
          : locate // ignore: cast_nullable_to_non_nullable
              as Locate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocateCopyWith<$Res> get locate {
    return $LocateCopyWith<$Res>(_value.locate, (value) {
      return _then(_value.copyWith(locate: value) as $Val);
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
  @useResult
  $Res call({int amount, Locate locate});

  @override
  $LocateCopyWith<$Res> get locate;
}

/// @nodoc
class __$$_LocateAmountCopyWithImpl<$Res>
    extends _$LocateAmountCopyWithImpl<$Res, _$_LocateAmount>
    implements _$$_LocateAmountCopyWith<$Res> {
  __$$_LocateAmountCopyWithImpl(
      _$_LocateAmount _value, $Res Function(_$_LocateAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? locate = null,
  }) {
    return _then(_$_LocateAmount(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      locate: null == locate
          ? _value.locate
          : locate // ignore: cast_nullable_to_non_nullable
              as Locate,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LocateAmount with DiagnosticableTreeMixin implements _LocateAmount {
  const _$_LocateAmount({required this.amount, required this.locate});

  factory _$_LocateAmount.fromJson(Map<String, dynamic> json) =>
      _$$_LocateAmountFromJson(json);

  @override
  final int amount;
  @override
  final Locate locate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocateAmount(amount: $amount, locate: $locate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocateAmount'))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('locate', locate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocateAmount &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.locate, locate) || other.locate == locate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, locate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
