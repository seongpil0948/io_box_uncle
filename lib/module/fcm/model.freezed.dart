// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataSource _$DataSourceFromJson(Map<String, dynamic> json) {
  return _DataSource.fromJson(json);
}

/// @nodoc
mixin _$DataSource {
  String get pushType => throw _privateConstructorUsedError;
  String? get targetPage => throw _privateConstructorUsedError;
  String get fromUserId => throw _privateConstructorUsedError;
  String get application => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSourceCopyWith<DataSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceCopyWith<$Res> {
  factory $DataSourceCopyWith(
          DataSource value, $Res Function(DataSource) then) =
      _$DataSourceCopyWithImpl<$Res, DataSource>;
  @useResult
  $Res call(
      {String pushType,
      String? targetPage,
      String fromUserId,
      String application});
}

/// @nodoc
class _$DataSourceCopyWithImpl<$Res, $Val extends DataSource>
    implements $DataSourceCopyWith<$Res> {
  _$DataSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushType = null,
    Object? targetPage = freezed,
    Object? fromUserId = null,
    Object? application = null,
  }) {
    return _then(_value.copyWith(
      pushType: null == pushType
          ? _value.pushType
          : pushType // ignore: cast_nullable_to_non_nullable
              as String,
      targetPage: freezed == targetPage
          ? _value.targetPage
          : targetPage // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUserId: null == fromUserId
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      application: null == application
          ? _value.application
          : application // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataSourceCopyWith<$Res>
    implements $DataSourceCopyWith<$Res> {
  factory _$$_DataSourceCopyWith(
          _$_DataSource value, $Res Function(_$_DataSource) then) =
      __$$_DataSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pushType,
      String? targetPage,
      String fromUserId,
      String application});
}

/// @nodoc
class __$$_DataSourceCopyWithImpl<$Res>
    extends _$DataSourceCopyWithImpl<$Res, _$_DataSource>
    implements _$$_DataSourceCopyWith<$Res> {
  __$$_DataSourceCopyWithImpl(
      _$_DataSource _value, $Res Function(_$_DataSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushType = null,
    Object? targetPage = freezed,
    Object? fromUserId = null,
    Object? application = null,
  }) {
    return _then(_$_DataSource(
      pushType: null == pushType
          ? _value.pushType
          : pushType // ignore: cast_nullable_to_non_nullable
              as String,
      targetPage: freezed == targetPage
          ? _value.targetPage
          : targetPage // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUserId: null == fromUserId
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      application: null == application
          ? _value.application
          : application // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DataSource with DiagnosticableTreeMixin implements _DataSource {
  const _$_DataSource(
      {required this.pushType,
      required this.targetPage,
      required this.fromUserId,
      this.application = "io-box"});

  factory _$_DataSource.fromJson(Map<String, dynamic> json) =>
      _$$_DataSourceFromJson(json);

  @override
  final String pushType;
  @override
  final String? targetPage;
  @override
  final String fromUserId;
  @override
  @JsonKey()
  final String application;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSource(pushType: $pushType, targetPage: $targetPage, fromUserId: $fromUserId, application: $application)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataSource'))
      ..add(DiagnosticsProperty('pushType', pushType))
      ..add(DiagnosticsProperty('targetPage', targetPage))
      ..add(DiagnosticsProperty('fromUserId', fromUserId))
      ..add(DiagnosticsProperty('application', application));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSource &&
            (identical(other.pushType, pushType) ||
                other.pushType == pushType) &&
            (identical(other.targetPage, targetPage) ||
                other.targetPage == targetPage) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.application, application) ||
                other.application == application));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pushType, targetPage, fromUserId, application);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSourceCopyWith<_$_DataSource> get copyWith =>
      __$$_DataSourceCopyWithImpl<_$_DataSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSourceToJson(
      this,
    );
  }
}

abstract class _DataSource implements DataSource {
  const factory _DataSource(
      {required final String pushType,
      required final String? targetPage,
      required final String fromUserId,
      final String application}) = _$_DataSource;

  factory _DataSource.fromJson(Map<String, dynamic> json) =
      _$_DataSource.fromJson;

  @override
  String get pushType;
  @override
  String? get targetPage;
  @override
  String get fromUserId;
  @override
  String get application;
  @override
  @JsonKey(ignore: true)
  _$$_DataSourceCopyWith<_$_DataSource> get copyWith =>
      throw _privateConstructorUsedError;
}

NotiSource _$NotiSourceFromJson(Map<String, dynamic> json) {
  return _NotiSource.fromJson(json);
}

/// @nodoc
mixin _$NotiSource {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotiSourceCopyWith<NotiSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotiSourceCopyWith<$Res> {
  factory $NotiSourceCopyWith(
          NotiSource value, $Res Function(NotiSource) then) =
      _$NotiSourceCopyWithImpl<$Res, NotiSource>;
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class _$NotiSourceCopyWithImpl<$Res, $Val extends NotiSource>
    implements $NotiSourceCopyWith<$Res> {
  _$NotiSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotiSourceCopyWith<$Res>
    implements $NotiSourceCopyWith<$Res> {
  factory _$$_NotiSourceCopyWith(
          _$_NotiSource value, $Res Function(_$_NotiSource) then) =
      __$$_NotiSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String body});
}

/// @nodoc
class __$$_NotiSourceCopyWithImpl<$Res>
    extends _$NotiSourceCopyWithImpl<$Res, _$_NotiSource>
    implements _$$_NotiSourceCopyWith<$Res> {
  __$$_NotiSourceCopyWithImpl(
      _$_NotiSource _value, $Res Function(_$_NotiSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$_NotiSource(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_NotiSource with DiagnosticableTreeMixin implements _NotiSource {
  const _$_NotiSource({required this.title, required this.body});

  factory _$_NotiSource.fromJson(Map<String, dynamic> json) =>
      _$$_NotiSourceFromJson(json);

  @override
  final String title;
  @override
  final String body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotiSource(title: $title, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotiSource'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotiSource &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotiSourceCopyWith<_$_NotiSource> get copyWith =>
      __$$_NotiSourceCopyWithImpl<_$_NotiSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotiSourceToJson(
      this,
    );
  }
}

abstract class _NotiSource implements NotiSource {
  const factory _NotiSource(
      {required final String title,
      required final String body}) = _$_NotiSource;

  factory _NotiSource.fromJson(Map<String, dynamic> json) =
      _$_NotiSource.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_NotiSourceCopyWith<_$_NotiSource> get copyWith =>
      throw _privateConstructorUsedError;
}

PushSource _$PushSourceFromJson(Map<String, dynamic> json) {
  return _PushSource.fromJson(json);
}

/// @nodoc
mixin _$PushSource {
  List<String> get tokens => throw _privateConstructorUsedError;
  List<String> get userIds => throw _privateConstructorUsedError;
  DataSource get data => throw _privateConstructorUsedError;
  NotiSource get noti => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushSourceCopyWith<PushSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushSourceCopyWith<$Res> {
  factory $PushSourceCopyWith(
          PushSource value, $Res Function(PushSource) then) =
      _$PushSourceCopyWithImpl<$Res, PushSource>;
  @useResult
  $Res call(
      {List<String> tokens,
      List<String> userIds,
      DataSource data,
      NotiSource noti,
      String? topic});

  $DataSourceCopyWith<$Res> get data;
  $NotiSourceCopyWith<$Res> get noti;
}

/// @nodoc
class _$PushSourceCopyWithImpl<$Res, $Val extends PushSource>
    implements $PushSourceCopyWith<$Res> {
  _$PushSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? userIds = null,
    Object? data = null,
    Object? noti = null,
    Object? topic = freezed,
  }) {
    return _then(_value.copyWith(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSource,
      noti: null == noti
          ? _value.noti
          : noti // ignore: cast_nullable_to_non_nullable
              as NotiSource,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataSourceCopyWith<$Res> get data {
    return $DataSourceCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NotiSourceCopyWith<$Res> get noti {
    return $NotiSourceCopyWith<$Res>(_value.noti, (value) {
      return _then(_value.copyWith(noti: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PushSourceCopyWith<$Res>
    implements $PushSourceCopyWith<$Res> {
  factory _$$_PushSourceCopyWith(
          _$_PushSource value, $Res Function(_$_PushSource) then) =
      __$$_PushSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> tokens,
      List<String> userIds,
      DataSource data,
      NotiSource noti,
      String? topic});

  @override
  $DataSourceCopyWith<$Res> get data;
  @override
  $NotiSourceCopyWith<$Res> get noti;
}

/// @nodoc
class __$$_PushSourceCopyWithImpl<$Res>
    extends _$PushSourceCopyWithImpl<$Res, _$_PushSource>
    implements _$$_PushSourceCopyWith<$Res> {
  __$$_PushSourceCopyWithImpl(
      _$_PushSource _value, $Res Function(_$_PushSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? userIds = null,
    Object? data = null,
    Object? noti = null,
    Object? topic = freezed,
  }) {
    return _then(_$_PushSource(
      tokens: null == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataSource,
      noti: null == noti
          ? _value.noti
          : noti // ignore: cast_nullable_to_non_nullable
              as NotiSource,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PushSource extends _PushSource {
  const _$_PushSource(
      {required final List<String> tokens,
      required final List<String> userIds,
      required this.data,
      required this.noti,
      required this.topic})
      : _tokens = tokens,
        _userIds = userIds,
        super._();

  factory _$_PushSource.fromJson(Map<String, dynamic> json) =>
      _$$_PushSourceFromJson(json);

  final List<String> _tokens;
  @override
  List<String> get tokens {
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  final List<String> _userIds;
  @override
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  final DataSource data;
  @override
  final NotiSource noti;
  @override
  final String? topic;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushSource &&
            const DeepCollectionEquality().equals(other._tokens, _tokens) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.noti, noti) || other.noti == noti) &&
            (identical(other.topic, topic) || other.topic == topic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tokens),
      const DeepCollectionEquality().hash(_userIds),
      data,
      noti,
      topic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushSourceCopyWith<_$_PushSource> get copyWith =>
      __$$_PushSourceCopyWithImpl<_$_PushSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PushSourceToJson(
      this,
    );
  }
}

abstract class _PushSource extends PushSource {
  const factory _PushSource(
      {required final List<String> tokens,
      required final List<String> userIds,
      required final DataSource data,
      required final NotiSource noti,
      required final String? topic}) = _$_PushSource;
  const _PushSource._() : super._();

  factory _PushSource.fromJson(Map<String, dynamic> json) =
      _$_PushSource.fromJson;

  @override
  List<String> get tokens;
  @override
  List<String> get userIds;
  @override
  DataSource get data;
  @override
  NotiSource get noti;
  @override
  String? get topic;
  @override
  @JsonKey(ignore: true)
  _$$_PushSourceCopyWith<_$_PushSource> get copyWith =>
      throw _privateConstructorUsedError;
}

FcmToken _$FcmTokenFromJson(Map<String, dynamic> json) {
  return _FcmToken.fromJson(json);
}

/// @nodoc
mixin _$FcmToken {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FcmTokenCopyWith<FcmToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmTokenCopyWith<$Res> {
  factory $FcmTokenCopyWith(FcmToken value, $Res Function(FcmToken) then) =
      _$FcmTokenCopyWithImpl<$Res, FcmToken>;
  @useResult
  $Res call({DateTime createdAt, String token});
}

/// @nodoc
class _$FcmTokenCopyWithImpl<$Res, $Val extends FcmToken>
    implements $FcmTokenCopyWith<$Res> {
  _$FcmTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FcmTokenCopyWith<$Res> implements $FcmTokenCopyWith<$Res> {
  factory _$$_FcmTokenCopyWith(
          _$_FcmToken value, $Res Function(_$_FcmToken) then) =
      __$$_FcmTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, String token});
}

/// @nodoc
class __$$_FcmTokenCopyWithImpl<$Res>
    extends _$FcmTokenCopyWithImpl<$Res, _$_FcmToken>
    implements _$$_FcmTokenCopyWith<$Res> {
  __$$_FcmTokenCopyWithImpl(
      _$_FcmToken _value, $Res Function(_$_FcmToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? token = null,
  }) {
    return _then(_$_FcmToken(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_FcmToken extends _FcmToken {
  _$_FcmToken({required this.createdAt, required this.token}) : super._();

  factory _$_FcmToken.fromJson(Map<String, dynamic> json) =>
      _$$_FcmTokenFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final String token;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FcmTokenCopyWith<_$_FcmToken> get copyWith =>
      __$$_FcmTokenCopyWithImpl<_$_FcmToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FcmTokenToJson(
      this,
    );
  }
}

abstract class _FcmToken extends FcmToken {
  factory _FcmToken(
      {required final DateTime createdAt,
      required final String token}) = _$_FcmToken;
  _FcmToken._() : super._();

  factory _FcmToken.fromJson(Map<String, dynamic> json) = _$_FcmToken.fromJson;

  @override
  DateTime get createdAt;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_FcmTokenCopyWith<_$_FcmToken> get copyWith =>
      throw _privateConstructorUsedError;
}
