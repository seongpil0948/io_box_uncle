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

IoPay _$IoPayFromJson(Map<String, dynamic> json) {
  return _IoPay.fromJson(json);
}

/// @nodoc
mixin _$IoPay {
  String get userId => throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  int get pendingBudget => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt', fromJson: toDateTime, toJson: toTimeStamp)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoPayCopyWith<IoPay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoPayCopyWith<$Res> {
  factory $IoPayCopyWith(IoPay value, $Res Function(IoPay) then) =
      _$IoPayCopyWithImpl<$Res, IoPay>;
  @useResult
  $Res call(
      {String userId,
      int budget,
      int pendingBudget,
      @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
          DateTime? createdAt,
      @JsonKey(name: 'updatedAt', fromJson: toDateTime, toJson: toTimeStamp)
          DateTime? updatedAt});
}

/// @nodoc
class _$IoPayCopyWithImpl<$Res, $Val extends IoPay>
    implements $IoPayCopyWith<$Res> {
  _$IoPayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? budget = null,
    Object? pendingBudget = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      pendingBudget: null == pendingBudget
          ? _value.pendingBudget
          : pendingBudget // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IoPayCopyWith<$Res> implements $IoPayCopyWith<$Res> {
  factory _$$_IoPayCopyWith(_$_IoPay value, $Res Function(_$_IoPay) then) =
      __$$_IoPayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      int budget,
      int pendingBudget,
      @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
          DateTime? createdAt,
      @JsonKey(name: 'updatedAt', fromJson: toDateTime, toJson: toTimeStamp)
          DateTime? updatedAt});
}

/// @nodoc
class __$$_IoPayCopyWithImpl<$Res> extends _$IoPayCopyWithImpl<$Res, _$_IoPay>
    implements _$$_IoPayCopyWith<$Res> {
  __$$_IoPayCopyWithImpl(_$_IoPay _value, $Res Function(_$_IoPay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? budget = null,
    Object? pendingBudget = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_IoPay(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      pendingBudget: null == pendingBudget
          ? _value.pendingBudget
          : pendingBudget // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IoPay implements _IoPay {
  const _$_IoPay(
      {required this.userId,
      required this.budget,
      required this.pendingBudget,
      @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
          this.createdAt,
      @JsonKey(name: 'updatedAt', fromJson: toDateTime, toJson: toTimeStamp)
          this.updatedAt});

  factory _$_IoPay.fromJson(Map<String, dynamic> json) =>
      _$$_IoPayFromJson(json);

  @override
  final String userId;
  @override
  final int budget;
  @override
  final int pendingBudget;
  @override
  @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt', fromJson: toDateTime, toJson: toTimeStamp)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'IoPay(userId: $userId, budget: $budget, pendingBudget: $pendingBudget, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IoPay &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.pendingBudget, pendingBudget) ||
                other.pendingBudget == pendingBudget) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, budget, pendingBudget, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IoPayCopyWith<_$_IoPay> get copyWith =>
      __$$_IoPayCopyWithImpl<_$_IoPay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IoPayToJson(
      this,
    );
  }
}

abstract class _IoPay implements IoPay {
  const factory _IoPay(
      {required final String userId,
      required final int budget,
      required final int pendingBudget,
      @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
          final DateTime? createdAt,
      @JsonKey(name: 'updatedAt', fromJson: toDateTime, toJson: toTimeStamp)
          final DateTime? updatedAt}) = _$_IoPay;

  factory _IoPay.fromJson(Map<String, dynamic> json) = _$_IoPay.fromJson;

  @override
  String get userId;
  @override
  int get budget;
  @override
  int get pendingBudget;
  @override
  @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt', fromJson: toDateTime, toJson: toTimeStamp)
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_IoPayCopyWith<_$_IoPay> get copyWith =>
      throw _privateConstructorUsedError;
}

PayHistory _$PayHistoryFromJson(Map<String, dynamic> json) {
  return _PayHistory.fromJson(json);
}

/// @nodoc
mixin _$PayHistory {
  String get userId => throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  int get pendingBudget => throw _privateConstructorUsedError;
  PayHistState get state => throw _privateConstructorUsedError;
  Map<String, dynamic> get tbd => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayHistoryCopyWith<PayHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayHistoryCopyWith<$Res> {
  factory $PayHistoryCopyWith(
          PayHistory value, $Res Function(PayHistory) then) =
      _$PayHistoryCopyWithImpl<$Res, PayHistory>;
  @useResult
  $Res call(
      {String userId,
      int budget,
      int pendingBudget,
      PayHistState state,
      Map<String, dynamic> tbd,
      @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
          DateTime? createdAt});
}

/// @nodoc
class _$PayHistoryCopyWithImpl<$Res, $Val extends PayHistory>
    implements $PayHistoryCopyWith<$Res> {
  _$PayHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? budget = null,
    Object? pendingBudget = null,
    Object? state = null,
    Object? tbd = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      pendingBudget: null == pendingBudget
          ? _value.pendingBudget
          : pendingBudget // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PayHistState,
      tbd: null == tbd
          ? _value.tbd
          : tbd // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PayHistoryCopyWith<$Res>
    implements $PayHistoryCopyWith<$Res> {
  factory _$$_PayHistoryCopyWith(
          _$_PayHistory value, $Res Function(_$_PayHistory) then) =
      __$$_PayHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      int budget,
      int pendingBudget,
      PayHistState state,
      Map<String, dynamic> tbd,
      @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
          DateTime? createdAt});
}

/// @nodoc
class __$$_PayHistoryCopyWithImpl<$Res>
    extends _$PayHistoryCopyWithImpl<$Res, _$_PayHistory>
    implements _$$_PayHistoryCopyWith<$Res> {
  __$$_PayHistoryCopyWithImpl(
      _$_PayHistory _value, $Res Function(_$_PayHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? budget = null,
    Object? pendingBudget = null,
    Object? state = null,
    Object? tbd = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$_PayHistory(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      pendingBudget: null == pendingBudget
          ? _value.pendingBudget
          : pendingBudget // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PayHistState,
      tbd: null == tbd
          ? _value._tbd
          : tbd // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PayHistory implements _PayHistory {
  const _$_PayHistory(
      {required this.userId,
      required this.budget,
      required this.pendingBudget,
      required this.state,
      required final Map<String, dynamic> tbd,
      @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
          this.createdAt})
      : _tbd = tbd;

  factory _$_PayHistory.fromJson(Map<String, dynamic> json) =>
      _$$_PayHistoryFromJson(json);

  @override
  final String userId;
  @override
  final int budget;
  @override
  final int pendingBudget;
  @override
  final PayHistState state;
  final Map<String, dynamic> _tbd;
  @override
  Map<String, dynamic> get tbd {
    if (_tbd is EqualUnmodifiableMapView) return _tbd;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tbd);
  }

  @override
  @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
  final DateTime? createdAt;

  @override
  String toString() {
    return 'PayHistory(userId: $userId, budget: $budget, pendingBudget: $pendingBudget, state: $state, tbd: $tbd, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayHistory &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.pendingBudget, pendingBudget) ||
                other.pendingBudget == pendingBudget) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other._tbd, _tbd) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, budget, pendingBudget,
      state, const DeepCollectionEquality().hash(_tbd), createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayHistoryCopyWith<_$_PayHistory> get copyWith =>
      __$$_PayHistoryCopyWithImpl<_$_PayHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayHistoryToJson(
      this,
    );
  }
}

abstract class _PayHistory implements PayHistory {
  const factory _PayHistory(
      {required final String userId,
      required final int budget,
      required final int pendingBudget,
      required final PayHistState state,
      required final Map<String, dynamic> tbd,
      @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
          final DateTime? createdAt}) = _$_PayHistory;

  factory _PayHistory.fromJson(Map<String, dynamic> json) =
      _$_PayHistory.fromJson;

  @override
  String get userId;
  @override
  int get budget;
  @override
  int get pendingBudget;
  @override
  PayHistState get state;
  @override
  Map<String, dynamic> get tbd;
  @override
  @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_PayHistoryCopyWith<_$_PayHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
