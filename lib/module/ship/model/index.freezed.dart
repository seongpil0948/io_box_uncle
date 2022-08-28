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

ShipOrder _$ShipOrderFromJson(Map<String, dynamic> json) {
  return _ShipOrder.fromJson(json);
}

/// @nodoc
mixin _$ShipOrder {
  Shipment get shipment => throw _privateConstructorUsedError;
  ProdOrder get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipOrderCopyWith<ShipOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipOrderCopyWith<$Res> {
  factory $ShipOrderCopyWith(ShipOrder value, $Res Function(ShipOrder) then) =
      _$ShipOrderCopyWithImpl<$Res>;
  $Res call({Shipment shipment, ProdOrder order});

  $ShipmentCopyWith<$Res> get shipment;
  $ProdOrderCopyWith<$Res> get order;
}

/// @nodoc
class _$ShipOrderCopyWithImpl<$Res> implements $ShipOrderCopyWith<$Res> {
  _$ShipOrderCopyWithImpl(this._value, this._then);

  final ShipOrder _value;
  // ignore: unused_field
  final $Res Function(ShipOrder) _then;

  @override
  $Res call({
    Object? shipment = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      shipment: shipment == freezed
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as Shipment,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as ProdOrder,
    ));
  }

  @override
  $ShipmentCopyWith<$Res> get shipment {
    return $ShipmentCopyWith<$Res>(_value.shipment, (value) {
      return _then(_value.copyWith(shipment: value));
    });
  }

  @override
  $ProdOrderCopyWith<$Res> get order {
    return $ProdOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc
abstract class _$$_ShipOrderCopyWith<$Res> implements $ShipOrderCopyWith<$Res> {
  factory _$$_ShipOrderCopyWith(
          _$_ShipOrder value, $Res Function(_$_ShipOrder) then) =
      __$$_ShipOrderCopyWithImpl<$Res>;
  @override
  $Res call({Shipment shipment, ProdOrder order});

  @override
  $ShipmentCopyWith<$Res> get shipment;
  @override
  $ProdOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_ShipOrderCopyWithImpl<$Res> extends _$ShipOrderCopyWithImpl<$Res>
    implements _$$_ShipOrderCopyWith<$Res> {
  __$$_ShipOrderCopyWithImpl(
      _$_ShipOrder _value, $Res Function(_$_ShipOrder) _then)
      : super(_value, (v) => _then(v as _$_ShipOrder));

  @override
  _$_ShipOrder get _value => super._value as _$_ShipOrder;

  @override
  $Res call({
    Object? shipment = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_ShipOrder(
      shipment: shipment == freezed
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as Shipment,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as ProdOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipOrder with DiagnosticableTreeMixin implements _ShipOrder {
  const _$_ShipOrder({required this.shipment, required this.order});

  factory _$_ShipOrder.fromJson(Map<String, dynamic> json) =>
      _$$_ShipOrderFromJson(json);

  @override
  final Shipment shipment;
  @override
  final ProdOrder order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShipOrder(shipment: $shipment, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShipOrder'))
      ..add(DiagnosticsProperty('shipment', shipment))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipOrder &&
            const DeepCollectionEquality().equals(other.shipment, shipment) &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shipment),
      const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$$_ShipOrderCopyWith<_$_ShipOrder> get copyWith =>
      __$$_ShipOrderCopyWithImpl<_$_ShipOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipOrderToJson(
      this,
    );
  }
}

abstract class _ShipOrder implements ShipOrder {
  const factory _ShipOrder(
      {required final Shipment shipment,
      required final ProdOrder order}) = _$_ShipOrder;

  factory _ShipOrder.fromJson(Map<String, dynamic> json) =
      _$_ShipOrder.fromJson;

  @override
  Shipment get shipment;
  @override
  ProdOrder get order;
  @override
  @JsonKey(ignore: true)
  _$$_ShipOrderCopyWith<_$_ShipOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

GarmentOrder _$GarmentOrderFromJson(Map<String, dynamic> json) {
  return _GarmentOrder.fromJson(json);
}

/// @nodoc
mixin _$GarmentOrder {
  DateTime get orderDate => throw _privateConstructorUsedError;
  DateTime get doneDate => throw _privateConstructorUsedError;
  String get dbId => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  String get shipManagerId => throw _privateConstructorUsedError;
  List<String> get orderIds => throw _privateConstructorUsedError;
  List<String> get itemIds => throw _privateConstructorUsedError;
  List<String> get subOrderIds => throw _privateConstructorUsedError;
  List<String> get vendorIds => throw _privateConstructorUsedError;
  List<OrderState> get states => throw _privateConstructorUsedError;
  OrderAmount get actualAmount => throw _privateConstructorUsedError;
  OrderAmount get initialAmount => throw _privateConstructorUsedError;
  List<ProdOrder> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GarmentOrderCopyWith<GarmentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarmentOrderCopyWith<$Res> {
  factory $GarmentOrderCopyWith(
          GarmentOrder value, $Res Function(GarmentOrder) then) =
      _$GarmentOrderCopyWithImpl<$Res>;
  $Res call(
      {DateTime orderDate,
      DateTime doneDate,
      String dbId,
      String shopId,
      String shipManagerId,
      List<String> orderIds,
      List<String> itemIds,
      List<String> subOrderIds,
      List<String> vendorIds,
      List<OrderState> states,
      OrderAmount actualAmount,
      OrderAmount initialAmount,
      List<ProdOrder> items});

  $OrderAmountCopyWith<$Res> get actualAmount;
  $OrderAmountCopyWith<$Res> get initialAmount;
}

/// @nodoc
class _$GarmentOrderCopyWithImpl<$Res> implements $GarmentOrderCopyWith<$Res> {
  _$GarmentOrderCopyWithImpl(this._value, this._then);

  final GarmentOrder _value;
  // ignore: unused_field
  final $Res Function(GarmentOrder) _then;

  @override
  $Res call({
    Object? orderDate = freezed,
    Object? doneDate = freezed,
    Object? dbId = freezed,
    Object? shopId = freezed,
    Object? shipManagerId = freezed,
    Object? orderIds = freezed,
    Object? itemIds = freezed,
    Object? subOrderIds = freezed,
    Object? vendorIds = freezed,
    Object? states = freezed,
    Object? actualAmount = freezed,
    Object? initialAmount = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doneDate: doneDate == freezed
          ? _value.doneDate
          : doneDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dbId: dbId == freezed
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shipManagerId: shipManagerId == freezed
          ? _value.shipManagerId
          : shipManagerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderIds: orderIds == freezed
          ? _value.orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemIds: itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subOrderIds: subOrderIds == freezed
          ? _value.subOrderIds
          : subOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorIds: vendorIds == freezed
          ? _value.vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<OrderState>,
      actualAmount: actualAmount == freezed
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      initialAmount: initialAmount == freezed
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProdOrder>,
    ));
  }

  @override
  $OrderAmountCopyWith<$Res> get actualAmount {
    return $OrderAmountCopyWith<$Res>(_value.actualAmount, (value) {
      return _then(_value.copyWith(actualAmount: value));
    });
  }

  @override
  $OrderAmountCopyWith<$Res> get initialAmount {
    return $OrderAmountCopyWith<$Res>(_value.initialAmount, (value) {
      return _then(_value.copyWith(initialAmount: value));
    });
  }
}

/// @nodoc
abstract class _$$_GarmentOrderCopyWith<$Res>
    implements $GarmentOrderCopyWith<$Res> {
  factory _$$_GarmentOrderCopyWith(
          _$_GarmentOrder value, $Res Function(_$_GarmentOrder) then) =
      __$$_GarmentOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime orderDate,
      DateTime doneDate,
      String dbId,
      String shopId,
      String shipManagerId,
      List<String> orderIds,
      List<String> itemIds,
      List<String> subOrderIds,
      List<String> vendorIds,
      List<OrderState> states,
      OrderAmount actualAmount,
      OrderAmount initialAmount,
      List<ProdOrder> items});

  @override
  $OrderAmountCopyWith<$Res> get actualAmount;
  @override
  $OrderAmountCopyWith<$Res> get initialAmount;
}

/// @nodoc
class __$$_GarmentOrderCopyWithImpl<$Res>
    extends _$GarmentOrderCopyWithImpl<$Res>
    implements _$$_GarmentOrderCopyWith<$Res> {
  __$$_GarmentOrderCopyWithImpl(
      _$_GarmentOrder _value, $Res Function(_$_GarmentOrder) _then)
      : super(_value, (v) => _then(v as _$_GarmentOrder));

  @override
  _$_GarmentOrder get _value => super._value as _$_GarmentOrder;

  @override
  $Res call({
    Object? orderDate = freezed,
    Object? doneDate = freezed,
    Object? dbId = freezed,
    Object? shopId = freezed,
    Object? shipManagerId = freezed,
    Object? orderIds = freezed,
    Object? itemIds = freezed,
    Object? subOrderIds = freezed,
    Object? vendorIds = freezed,
    Object? states = freezed,
    Object? actualAmount = freezed,
    Object? initialAmount = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_GarmentOrder(
      orderDate: orderDate == freezed
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doneDate: doneDate == freezed
          ? _value.doneDate
          : doneDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dbId: dbId == freezed
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shipManagerId: shipManagerId == freezed
          ? _value.shipManagerId
          : shipManagerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderIds: orderIds == freezed
          ? _value._orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemIds: itemIds == freezed
          ? _value._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subOrderIds: subOrderIds == freezed
          ? _value._subOrderIds
          : subOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorIds: vendorIds == freezed
          ? _value._vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      states: states == freezed
          ? _value._states
          : states // ignore: cast_nullable_to_non_nullable
              as List<OrderState>,
      actualAmount: actualAmount == freezed
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      initialAmount: initialAmount == freezed
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProdOrder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GarmentOrder with DiagnosticableTreeMixin implements _GarmentOrder {
  const _$_GarmentOrder(
      {required this.orderDate,
      required this.doneDate,
      required this.dbId,
      required this.shopId,
      required this.shipManagerId,
      required final List<String> orderIds,
      required final List<String> itemIds,
      required final List<String> subOrderIds,
      required final List<String> vendorIds,
      required final List<OrderState> states,
      required this.actualAmount,
      required this.initialAmount,
      required final List<ProdOrder> items})
      : _orderIds = orderIds,
        _itemIds = itemIds,
        _subOrderIds = subOrderIds,
        _vendorIds = vendorIds,
        _states = states,
        _items = items;

  factory _$_GarmentOrder.fromJson(Map<String, dynamic> json) =>
      _$$_GarmentOrderFromJson(json);

  @override
  final DateTime orderDate;
  @override
  final DateTime doneDate;
  @override
  final String dbId;
  @override
  final String shopId;
  @override
  final String shipManagerId;
  final List<String> _orderIds;
  @override
  List<String> get orderIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderIds);
  }

  final List<String> _itemIds;
  @override
  List<String> get itemIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemIds);
  }

  final List<String> _subOrderIds;
  @override
  List<String> get subOrderIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subOrderIds);
  }

  final List<String> _vendorIds;
  @override
  List<String> get vendorIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorIds);
  }

  final List<OrderState> _states;
  @override
  List<OrderState> get states {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  @override
  final OrderAmount actualAmount;
  @override
  final OrderAmount initialAmount;
  final List<ProdOrder> _items;
  @override
  List<ProdOrder> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GarmentOrder(orderDate: $orderDate, doneDate: $doneDate, dbId: $dbId, shopId: $shopId, shipManagerId: $shipManagerId, orderIds: $orderIds, itemIds: $itemIds, subOrderIds: $subOrderIds, vendorIds: $vendorIds, states: $states, actualAmount: $actualAmount, initialAmount: $initialAmount, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GarmentOrder'))
      ..add(DiagnosticsProperty('orderDate', orderDate))
      ..add(DiagnosticsProperty('doneDate', doneDate))
      ..add(DiagnosticsProperty('dbId', dbId))
      ..add(DiagnosticsProperty('shopId', shopId))
      ..add(DiagnosticsProperty('shipManagerId', shipManagerId))
      ..add(DiagnosticsProperty('orderIds', orderIds))
      ..add(DiagnosticsProperty('itemIds', itemIds))
      ..add(DiagnosticsProperty('subOrderIds', subOrderIds))
      ..add(DiagnosticsProperty('vendorIds', vendorIds))
      ..add(DiagnosticsProperty('states', states))
      ..add(DiagnosticsProperty('actualAmount', actualAmount))
      ..add(DiagnosticsProperty('initialAmount', initialAmount))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GarmentOrder &&
            const DeepCollectionEquality().equals(other.orderDate, orderDate) &&
            const DeepCollectionEquality().equals(other.doneDate, doneDate) &&
            const DeepCollectionEquality().equals(other.dbId, dbId) &&
            const DeepCollectionEquality().equals(other.shopId, shopId) &&
            const DeepCollectionEquality()
                .equals(other.shipManagerId, shipManagerId) &&
            const DeepCollectionEquality().equals(other._orderIds, _orderIds) &&
            const DeepCollectionEquality().equals(other._itemIds, _itemIds) &&
            const DeepCollectionEquality()
                .equals(other._subOrderIds, _subOrderIds) &&
            const DeepCollectionEquality()
                .equals(other._vendorIds, _vendorIds) &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            const DeepCollectionEquality()
                .equals(other.actualAmount, actualAmount) &&
            const DeepCollectionEquality()
                .equals(other.initialAmount, initialAmount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderDate),
      const DeepCollectionEquality().hash(doneDate),
      const DeepCollectionEquality().hash(dbId),
      const DeepCollectionEquality().hash(shopId),
      const DeepCollectionEquality().hash(shipManagerId),
      const DeepCollectionEquality().hash(_orderIds),
      const DeepCollectionEquality().hash(_itemIds),
      const DeepCollectionEquality().hash(_subOrderIds),
      const DeepCollectionEquality().hash(_vendorIds),
      const DeepCollectionEquality().hash(_states),
      const DeepCollectionEquality().hash(actualAmount),
      const DeepCollectionEquality().hash(initialAmount),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_GarmentOrderCopyWith<_$_GarmentOrder> get copyWith =>
      __$$_GarmentOrderCopyWithImpl<_$_GarmentOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GarmentOrderToJson(
      this,
    );
  }
}

abstract class _GarmentOrder implements GarmentOrder {
  const factory _GarmentOrder(
      {required final DateTime orderDate,
      required final DateTime doneDate,
      required final String dbId,
      required final String shopId,
      required final String shipManagerId,
      required final List<String> orderIds,
      required final List<String> itemIds,
      required final List<String> subOrderIds,
      required final List<String> vendorIds,
      required final List<OrderState> states,
      required final OrderAmount actualAmount,
      required final OrderAmount initialAmount,
      required final List<ProdOrder> items}) = _$_GarmentOrder;

  factory _GarmentOrder.fromJson(Map<String, dynamic> json) =
      _$_GarmentOrder.fromJson;

  @override
  DateTime get orderDate;
  @override
  DateTime get doneDate;
  @override
  String get dbId;
  @override
  String get shopId;
  @override
  String get shipManagerId;
  @override
  List<String> get orderIds;
  @override
  List<String> get itemIds;
  @override
  List<String> get subOrderIds;
  @override
  List<String> get vendorIds;
  @override
  List<OrderState> get states;
  @override
  OrderAmount get actualAmount;
  @override
  OrderAmount get initialAmount;
  @override
  List<ProdOrder> get items;
  @override
  @JsonKey(ignore: true)
  _$$_GarmentOrderCopyWith<_$_GarmentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderAmount _$OrderAmountFromJson(Map<String, dynamic> json) {
  return _OrderAmount.fromJson(json);
}

/// @nodoc
mixin _$OrderAmount {
  int get shipFeeAmount => throw _privateConstructorUsedError;
  int get shipFeeDiscountAmount => throw _privateConstructorUsedError;
  int get tax => throw _privateConstructorUsedError;
  int get paidAmount => throw _privateConstructorUsedError;
  BoolM get paid => throw _privateConstructorUsedError;
  int get pureAmount => throw _privateConstructorUsedError;
  int get orderAmount => throw _privateConstructorUsedError;
  bool get paymentConfirm => throw _privateConstructorUsedError;
  PayMethod get paymentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderAmountCopyWith<OrderAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderAmountCopyWith<$Res> {
  factory $OrderAmountCopyWith(
          OrderAmount value, $Res Function(OrderAmount) then) =
      _$OrderAmountCopyWithImpl<$Res>;
  $Res call(
      {int shipFeeAmount,
      int shipFeeDiscountAmount,
      int tax,
      int paidAmount,
      BoolM paid,
      int pureAmount,
      int orderAmount,
      bool paymentConfirm,
      PayMethod paymentMethod});
}

/// @nodoc
class _$OrderAmountCopyWithImpl<$Res> implements $OrderAmountCopyWith<$Res> {
  _$OrderAmountCopyWithImpl(this._value, this._then);

  final OrderAmount _value;
  // ignore: unused_field
  final $Res Function(OrderAmount) _then;

  @override
  $Res call({
    Object? shipFeeAmount = freezed,
    Object? shipFeeDiscountAmount = freezed,
    Object? tax = freezed,
    Object? paidAmount = freezed,
    Object? paid = freezed,
    Object? pureAmount = freezed,
    Object? orderAmount = freezed,
    Object? paymentConfirm = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      shipFeeAmount: shipFeeAmount == freezed
          ? _value.shipFeeAmount
          : shipFeeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      shipFeeDiscountAmount: shipFeeDiscountAmount == freezed
          ? _value.shipFeeDiscountAmount
          : shipFeeDiscountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paid: paid == freezed
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as BoolM,
      pureAmount: pureAmount == freezed
          ? _value.pureAmount
          : pureAmount // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: orderAmount == freezed
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paymentConfirm: paymentConfirm == freezed
          ? _value.paymentConfirm
          : paymentConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PayMethod,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderAmountCopyWith<$Res>
    implements $OrderAmountCopyWith<$Res> {
  factory _$$_OrderAmountCopyWith(
          _$_OrderAmount value, $Res Function(_$_OrderAmount) then) =
      __$$_OrderAmountCopyWithImpl<$Res>;
  @override
  $Res call(
      {int shipFeeAmount,
      int shipFeeDiscountAmount,
      int tax,
      int paidAmount,
      BoolM paid,
      int pureAmount,
      int orderAmount,
      bool paymentConfirm,
      PayMethod paymentMethod});
}

/// @nodoc
class __$$_OrderAmountCopyWithImpl<$Res> extends _$OrderAmountCopyWithImpl<$Res>
    implements _$$_OrderAmountCopyWith<$Res> {
  __$$_OrderAmountCopyWithImpl(
      _$_OrderAmount _value, $Res Function(_$_OrderAmount) _then)
      : super(_value, (v) => _then(v as _$_OrderAmount));

  @override
  _$_OrderAmount get _value => super._value as _$_OrderAmount;

  @override
  $Res call({
    Object? shipFeeAmount = freezed,
    Object? shipFeeDiscountAmount = freezed,
    Object? tax = freezed,
    Object? paidAmount = freezed,
    Object? paid = freezed,
    Object? pureAmount = freezed,
    Object? orderAmount = freezed,
    Object? paymentConfirm = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$_OrderAmount(
      shipFeeAmount: shipFeeAmount == freezed
          ? _value.shipFeeAmount
          : shipFeeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      shipFeeDiscountAmount: shipFeeDiscountAmount == freezed
          ? _value.shipFeeDiscountAmount
          : shipFeeDiscountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paid: paid == freezed
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as BoolM,
      pureAmount: pureAmount == freezed
          ? _value.pureAmount
          : pureAmount // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: orderAmount == freezed
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paymentConfirm: paymentConfirm == freezed
          ? _value.paymentConfirm
          : paymentConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PayMethod,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderAmount with DiagnosticableTreeMixin implements _OrderAmount {
  const _$_OrderAmount(
      {required this.shipFeeAmount,
      required this.shipFeeDiscountAmount,
      required this.tax,
      required this.paidAmount,
      required this.paid,
      required this.pureAmount,
      required this.orderAmount,
      required this.paymentConfirm,
      required this.paymentMethod});

  factory _$_OrderAmount.fromJson(Map<String, dynamic> json) =>
      _$$_OrderAmountFromJson(json);

  @override
  final int shipFeeAmount;
  @override
  final int shipFeeDiscountAmount;
  @override
  final int tax;
  @override
  final int paidAmount;
  @override
  final BoolM paid;
  @override
  final int pureAmount;
  @override
  final int orderAmount;
  @override
  final bool paymentConfirm;
  @override
  final PayMethod paymentMethod;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderAmount(shipFeeAmount: $shipFeeAmount, shipFeeDiscountAmount: $shipFeeDiscountAmount, tax: $tax, paidAmount: $paidAmount, paid: $paid, pureAmount: $pureAmount, orderAmount: $orderAmount, paymentConfirm: $paymentConfirm, paymentMethod: $paymentMethod)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderAmount'))
      ..add(DiagnosticsProperty('shipFeeAmount', shipFeeAmount))
      ..add(DiagnosticsProperty('shipFeeDiscountAmount', shipFeeDiscountAmount))
      ..add(DiagnosticsProperty('tax', tax))
      ..add(DiagnosticsProperty('paidAmount', paidAmount))
      ..add(DiagnosticsProperty('paid', paid))
      ..add(DiagnosticsProperty('pureAmount', pureAmount))
      ..add(DiagnosticsProperty('orderAmount', orderAmount))
      ..add(DiagnosticsProperty('paymentConfirm', paymentConfirm))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderAmount &&
            const DeepCollectionEquality()
                .equals(other.shipFeeAmount, shipFeeAmount) &&
            const DeepCollectionEquality()
                .equals(other.shipFeeDiscountAmount, shipFeeDiscountAmount) &&
            const DeepCollectionEquality().equals(other.tax, tax) &&
            const DeepCollectionEquality()
                .equals(other.paidAmount, paidAmount) &&
            const DeepCollectionEquality().equals(other.paid, paid) &&
            const DeepCollectionEquality()
                .equals(other.pureAmount, pureAmount) &&
            const DeepCollectionEquality()
                .equals(other.orderAmount, orderAmount) &&
            const DeepCollectionEquality()
                .equals(other.paymentConfirm, paymentConfirm) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shipFeeAmount),
      const DeepCollectionEquality().hash(shipFeeDiscountAmount),
      const DeepCollectionEquality().hash(tax),
      const DeepCollectionEquality().hash(paidAmount),
      const DeepCollectionEquality().hash(paid),
      const DeepCollectionEquality().hash(pureAmount),
      const DeepCollectionEquality().hash(orderAmount),
      const DeepCollectionEquality().hash(paymentConfirm),
      const DeepCollectionEquality().hash(paymentMethod));

  @JsonKey(ignore: true)
  @override
  _$$_OrderAmountCopyWith<_$_OrderAmount> get copyWith =>
      __$$_OrderAmountCopyWithImpl<_$_OrderAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderAmountToJson(
      this,
    );
  }
}

abstract class _OrderAmount implements OrderAmount {
  const factory _OrderAmount(
      {required final int shipFeeAmount,
      required final int shipFeeDiscountAmount,
      required final int tax,
      required final int paidAmount,
      required final BoolM paid,
      required final int pureAmount,
      required final int orderAmount,
      required final bool paymentConfirm,
      required final PayMethod paymentMethod}) = _$_OrderAmount;

  factory _OrderAmount.fromJson(Map<String, dynamic> json) =
      _$_OrderAmount.fromJson;

  @override
  int get shipFeeAmount;
  @override
  int get shipFeeDiscountAmount;
  @override
  int get tax;
  @override
  int get paidAmount;
  @override
  BoolM get paid;
  @override
  int get pureAmount;
  @override
  int get orderAmount;
  @override
  bool get paymentConfirm;
  @override
  PayMethod get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$_OrderAmountCopyWith<_$_OrderAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

ProdOrder _$ProdOrderFromJson(Map<String, dynamic> json) {
  return _ProdOrder.fromJson(json);
}

/// @nodoc
mixin _$ProdOrder {
  String get id => throw _privateConstructorUsedError;
  String get vendorId => throw _privateConstructorUsedError;
  String get vendorProdId => throw _privateConstructorUsedError;
  String get shopProdId => throw _privateConstructorUsedError;
  String get shipmentId => throw _privateConstructorUsedError;
  int get orderCnt => throw _privateConstructorUsedError;
  int get activeCnt => throw _privateConstructorUsedError;
  int get pendingCnt => throw _privateConstructorUsedError;
  OrderAmount get actualAmount => throw _privateConstructorUsedError;
  OrderAmount get initialAmount => throw _privateConstructorUsedError;
  OrderState get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdOrderCopyWith<ProdOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdOrderCopyWith<$Res> {
  factory $ProdOrderCopyWith(ProdOrder value, $Res Function(ProdOrder) then) =
      _$ProdOrderCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String vendorId,
      String vendorProdId,
      String shopProdId,
      String shipmentId,
      int orderCnt,
      int activeCnt,
      int pendingCnt,
      OrderAmount actualAmount,
      OrderAmount initialAmount,
      OrderState state});

  $OrderAmountCopyWith<$Res> get actualAmount;
  $OrderAmountCopyWith<$Res> get initialAmount;
}

/// @nodoc
class _$ProdOrderCopyWithImpl<$Res> implements $ProdOrderCopyWith<$Res> {
  _$ProdOrderCopyWithImpl(this._value, this._then);

  final ProdOrder _value;
  // ignore: unused_field
  final $Res Function(ProdOrder) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? vendorId = freezed,
    Object? vendorProdId = freezed,
    Object? shopProdId = freezed,
    Object? shipmentId = freezed,
    Object? orderCnt = freezed,
    Object? activeCnt = freezed,
    Object? pendingCnt = freezed,
    Object? actualAmount = freezed,
    Object? initialAmount = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: vendorId == freezed
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorProdId: vendorProdId == freezed
          ? _value.vendorProdId
          : vendorProdId // ignore: cast_nullable_to_non_nullable
              as String,
      shopProdId: shopProdId == freezed
          ? _value.shopProdId
          : shopProdId // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentId: shipmentId == freezed
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCnt: orderCnt == freezed
          ? _value.orderCnt
          : orderCnt // ignore: cast_nullable_to_non_nullable
              as int,
      activeCnt: activeCnt == freezed
          ? _value.activeCnt
          : activeCnt // ignore: cast_nullable_to_non_nullable
              as int,
      pendingCnt: pendingCnt == freezed
          ? _value.pendingCnt
          : pendingCnt // ignore: cast_nullable_to_non_nullable
              as int,
      actualAmount: actualAmount == freezed
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      initialAmount: initialAmount == freezed
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderState,
    ));
  }

  @override
  $OrderAmountCopyWith<$Res> get actualAmount {
    return $OrderAmountCopyWith<$Res>(_value.actualAmount, (value) {
      return _then(_value.copyWith(actualAmount: value));
    });
  }

  @override
  $OrderAmountCopyWith<$Res> get initialAmount {
    return $OrderAmountCopyWith<$Res>(_value.initialAmount, (value) {
      return _then(_value.copyWith(initialAmount: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProdOrderCopyWith<$Res> implements $ProdOrderCopyWith<$Res> {
  factory _$$_ProdOrderCopyWith(
          _$_ProdOrder value, $Res Function(_$_ProdOrder) then) =
      __$$_ProdOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String vendorId,
      String vendorProdId,
      String shopProdId,
      String shipmentId,
      int orderCnt,
      int activeCnt,
      int pendingCnt,
      OrderAmount actualAmount,
      OrderAmount initialAmount,
      OrderState state});

  @override
  $OrderAmountCopyWith<$Res> get actualAmount;
  @override
  $OrderAmountCopyWith<$Res> get initialAmount;
}

/// @nodoc
class __$$_ProdOrderCopyWithImpl<$Res> extends _$ProdOrderCopyWithImpl<$Res>
    implements _$$_ProdOrderCopyWith<$Res> {
  __$$_ProdOrderCopyWithImpl(
      _$_ProdOrder _value, $Res Function(_$_ProdOrder) _then)
      : super(_value, (v) => _then(v as _$_ProdOrder));

  @override
  _$_ProdOrder get _value => super._value as _$_ProdOrder;

  @override
  $Res call({
    Object? id = freezed,
    Object? vendorId = freezed,
    Object? vendorProdId = freezed,
    Object? shopProdId = freezed,
    Object? shipmentId = freezed,
    Object? orderCnt = freezed,
    Object? activeCnt = freezed,
    Object? pendingCnt = freezed,
    Object? actualAmount = freezed,
    Object? initialAmount = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_ProdOrder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: vendorId == freezed
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorProdId: vendorProdId == freezed
          ? _value.vendorProdId
          : vendorProdId // ignore: cast_nullable_to_non_nullable
              as String,
      shopProdId: shopProdId == freezed
          ? _value.shopProdId
          : shopProdId // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentId: shipmentId == freezed
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCnt: orderCnt == freezed
          ? _value.orderCnt
          : orderCnt // ignore: cast_nullable_to_non_nullable
              as int,
      activeCnt: activeCnt == freezed
          ? _value.activeCnt
          : activeCnt // ignore: cast_nullable_to_non_nullable
              as int,
      pendingCnt: pendingCnt == freezed
          ? _value.pendingCnt
          : pendingCnt // ignore: cast_nullable_to_non_nullable
              as int,
      actualAmount: actualAmount == freezed
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      initialAmount: initialAmount == freezed
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProdOrder with DiagnosticableTreeMixin implements _ProdOrder {
  const _$_ProdOrder(
      {required this.id,
      required this.vendorId,
      required this.vendorProdId,
      required this.shopProdId,
      required this.shipmentId,
      required this.orderCnt,
      required this.activeCnt,
      required this.pendingCnt,
      required this.actualAmount,
      required this.initialAmount,
      required this.state});

  factory _$_ProdOrder.fromJson(Map<String, dynamic> json) =>
      _$$_ProdOrderFromJson(json);

  @override
  final String id;
  @override
  final String vendorId;
  @override
  final String vendorProdId;
  @override
  final String shopProdId;
  @override
  final String shipmentId;
  @override
  final int orderCnt;
  @override
  final int activeCnt;
  @override
  final int pendingCnt;
  @override
  final OrderAmount actualAmount;
  @override
  final OrderAmount initialAmount;
  @override
  final OrderState state;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProdOrder(id: $id, vendorId: $vendorId, vendorProdId: $vendorProdId, shopProdId: $shopProdId, shipmentId: $shipmentId, orderCnt: $orderCnt, activeCnt: $activeCnt, pendingCnt: $pendingCnt, actualAmount: $actualAmount, initialAmount: $initialAmount, state: $state)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProdOrder'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('vendorId', vendorId))
      ..add(DiagnosticsProperty('vendorProdId', vendorProdId))
      ..add(DiagnosticsProperty('shopProdId', shopProdId))
      ..add(DiagnosticsProperty('shipmentId', shipmentId))
      ..add(DiagnosticsProperty('orderCnt', orderCnt))
      ..add(DiagnosticsProperty('activeCnt', activeCnt))
      ..add(DiagnosticsProperty('pendingCnt', pendingCnt))
      ..add(DiagnosticsProperty('actualAmount', actualAmount))
      ..add(DiagnosticsProperty('initialAmount', initialAmount))
      ..add(DiagnosticsProperty('state', state));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProdOrder &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.vendorId, vendorId) &&
            const DeepCollectionEquality()
                .equals(other.vendorProdId, vendorProdId) &&
            const DeepCollectionEquality()
                .equals(other.shopProdId, shopProdId) &&
            const DeepCollectionEquality()
                .equals(other.shipmentId, shipmentId) &&
            const DeepCollectionEquality().equals(other.orderCnt, orderCnt) &&
            const DeepCollectionEquality().equals(other.activeCnt, activeCnt) &&
            const DeepCollectionEquality()
                .equals(other.pendingCnt, pendingCnt) &&
            const DeepCollectionEquality()
                .equals(other.actualAmount, actualAmount) &&
            const DeepCollectionEquality()
                .equals(other.initialAmount, initialAmount) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(vendorId),
      const DeepCollectionEquality().hash(vendorProdId),
      const DeepCollectionEquality().hash(shopProdId),
      const DeepCollectionEquality().hash(shipmentId),
      const DeepCollectionEquality().hash(orderCnt),
      const DeepCollectionEquality().hash(activeCnt),
      const DeepCollectionEquality().hash(pendingCnt),
      const DeepCollectionEquality().hash(actualAmount),
      const DeepCollectionEquality().hash(initialAmount),
      const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$_ProdOrderCopyWith<_$_ProdOrder> get copyWith =>
      __$$_ProdOrderCopyWithImpl<_$_ProdOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProdOrderToJson(
      this,
    );
  }
}

abstract class _ProdOrder implements ProdOrder {
  const factory _ProdOrder(
      {required final String id,
      required final String vendorId,
      required final String vendorProdId,
      required final String shopProdId,
      required final String shipmentId,
      required final int orderCnt,
      required final int activeCnt,
      required final int pendingCnt,
      required final OrderAmount actualAmount,
      required final OrderAmount initialAmount,
      required final OrderState state}) = _$_ProdOrder;

  factory _ProdOrder.fromJson(Map<String, dynamic> json) =
      _$_ProdOrder.fromJson;

  @override
  String get id;
  @override
  String get vendorId;
  @override
  String get vendorProdId;
  @override
  String get shopProdId;
  @override
  String get shipmentId;
  @override
  int get orderCnt;
  @override
  int get activeCnt;
  @override
  int get pendingCnt;
  @override
  OrderAmount get actualAmount;
  @override
  OrderAmount get initialAmount;
  @override
  OrderState get state;
  @override
  @JsonKey(ignore: true)
  _$$_ProdOrderCopyWith<_$_ProdOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

Shipment _$ShipmentFromJson(Map<String, dynamic> json) {
  return _Shipment.fromJson(json);
}

/// @nodoc
mixin _$Shipment {
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get wishedDeliveryTime => throw _privateConstructorUsedError;
  String get shippingId => throw _privateConstructorUsedError;
  String get orderDbId => throw _privateConstructorUsedError;
  String get managerId => throw _privateConstructorUsedError;
  String? get uncleId => throw _privateConstructorUsedError;
  String? get trackingNo => throw _privateConstructorUsedError;
  String get prodOrderId => throw _privateConstructorUsedError;
  ShipMethod get shipMethod => throw _privateConstructorUsedError;
  String get additionalInfo => throw _privateConstructorUsedError;
  bool get paid => throw _privateConstructorUsedError;
  String? get weightUnit => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  int? get amountByWeight => throw _privateConstructorUsedError;
  String? get sizeUnit => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get amountBySize => throw _privateConstructorUsedError;
  int get amountBasic => throw _privateConstructorUsedError;
  LocateType get locateType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentCopyWith<Shipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentCopyWith<$Res> {
  factory $ShipmentCopyWith(Shipment value, $Res Function(Shipment) then) =
      _$ShipmentCopyWithImpl<$Res>;
  $Res call(
      {DateTime createdAt,
      DateTime updatedAt,
      DateTime wishedDeliveryTime,
      String shippingId,
      String orderDbId,
      String managerId,
      String? uncleId,
      String? trackingNo,
      String prodOrderId,
      ShipMethod shipMethod,
      String additionalInfo,
      bool paid,
      String? weightUnit,
      int? weight,
      int? amountByWeight,
      String? sizeUnit,
      int? size,
      int? amountBySize,
      int amountBasic,
      LocateType locateType});
}

/// @nodoc
class _$ShipmentCopyWithImpl<$Res> implements $ShipmentCopyWith<$Res> {
  _$ShipmentCopyWithImpl(this._value, this._then);

  final Shipment _value;
  // ignore: unused_field
  final $Res Function(Shipment) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? wishedDeliveryTime = freezed,
    Object? shippingId = freezed,
    Object? orderDbId = freezed,
    Object? managerId = freezed,
    Object? uncleId = freezed,
    Object? trackingNo = freezed,
    Object? prodOrderId = freezed,
    Object? shipMethod = freezed,
    Object? additionalInfo = freezed,
    Object? paid = freezed,
    Object? weightUnit = freezed,
    Object? weight = freezed,
    Object? amountByWeight = freezed,
    Object? sizeUnit = freezed,
    Object? size = freezed,
    Object? amountBySize = freezed,
    Object? amountBasic = freezed,
    Object? locateType = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      wishedDeliveryTime: wishedDeliveryTime == freezed
          ? _value.wishedDeliveryTime
          : wishedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      shippingId: shippingId == freezed
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDbId: orderDbId == freezed
          ? _value.orderDbId
          : orderDbId // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: managerId == freezed
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
      uncleId: uncleId == freezed
          ? _value.uncleId
          : uncleId // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingNo: trackingNo == freezed
          ? _value.trackingNo
          : trackingNo // ignore: cast_nullable_to_non_nullable
              as String?,
      prodOrderId: prodOrderId == freezed
          ? _value.prodOrderId
          : prodOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      shipMethod: shipMethod == freezed
          ? _value.shipMethod
          : shipMethod // ignore: cast_nullable_to_non_nullable
              as ShipMethod,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      paid: paid == freezed
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      weightUnit: weightUnit == freezed
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      amountByWeight: amountByWeight == freezed
          ? _value.amountByWeight
          : amountByWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeUnit: sizeUnit == freezed
          ? _value.sizeUnit
          : sizeUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      amountBySize: amountBySize == freezed
          ? _value.amountBySize
          : amountBySize // ignore: cast_nullable_to_non_nullable
              as int?,
      amountBasic: amountBasic == freezed
          ? _value.amountBasic
          : amountBasic // ignore: cast_nullable_to_non_nullable
              as int,
      locateType: locateType == freezed
          ? _value.locateType
          : locateType // ignore: cast_nullable_to_non_nullable
              as LocateType,
    ));
  }
}

/// @nodoc
abstract class _$$_ShipmentCopyWith<$Res> implements $ShipmentCopyWith<$Res> {
  factory _$$_ShipmentCopyWith(
          _$_Shipment value, $Res Function(_$_Shipment) then) =
      __$$_ShipmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime createdAt,
      DateTime updatedAt,
      DateTime wishedDeliveryTime,
      String shippingId,
      String orderDbId,
      String managerId,
      String? uncleId,
      String? trackingNo,
      String prodOrderId,
      ShipMethod shipMethod,
      String additionalInfo,
      bool paid,
      String? weightUnit,
      int? weight,
      int? amountByWeight,
      String? sizeUnit,
      int? size,
      int? amountBySize,
      int amountBasic,
      LocateType locateType});
}

/// @nodoc
class __$$_ShipmentCopyWithImpl<$Res> extends _$ShipmentCopyWithImpl<$Res>
    implements _$$_ShipmentCopyWith<$Res> {
  __$$_ShipmentCopyWithImpl(
      _$_Shipment _value, $Res Function(_$_Shipment) _then)
      : super(_value, (v) => _then(v as _$_Shipment));

  @override
  _$_Shipment get _value => super._value as _$_Shipment;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? wishedDeliveryTime = freezed,
    Object? shippingId = freezed,
    Object? orderDbId = freezed,
    Object? managerId = freezed,
    Object? uncleId = freezed,
    Object? trackingNo = freezed,
    Object? prodOrderId = freezed,
    Object? shipMethod = freezed,
    Object? additionalInfo = freezed,
    Object? paid = freezed,
    Object? weightUnit = freezed,
    Object? weight = freezed,
    Object? amountByWeight = freezed,
    Object? sizeUnit = freezed,
    Object? size = freezed,
    Object? amountBySize = freezed,
    Object? amountBasic = freezed,
    Object? locateType = freezed,
  }) {
    return _then(_$_Shipment(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      wishedDeliveryTime: wishedDeliveryTime == freezed
          ? _value.wishedDeliveryTime
          : wishedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      shippingId: shippingId == freezed
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDbId: orderDbId == freezed
          ? _value.orderDbId
          : orderDbId // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: managerId == freezed
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
      uncleId: uncleId == freezed
          ? _value.uncleId
          : uncleId // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingNo: trackingNo == freezed
          ? _value.trackingNo
          : trackingNo // ignore: cast_nullable_to_non_nullable
              as String?,
      prodOrderId: prodOrderId == freezed
          ? _value.prodOrderId
          : prodOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      shipMethod: shipMethod == freezed
          ? _value.shipMethod
          : shipMethod // ignore: cast_nullable_to_non_nullable
              as ShipMethod,
      additionalInfo: additionalInfo == freezed
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      paid: paid == freezed
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      weightUnit: weightUnit == freezed
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      amountByWeight: amountByWeight == freezed
          ? _value.amountByWeight
          : amountByWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeUnit: sizeUnit == freezed
          ? _value.sizeUnit
          : sizeUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      amountBySize: amountBySize == freezed
          ? _value.amountBySize
          : amountBySize // ignore: cast_nullable_to_non_nullable
              as int?,
      amountBasic: amountBasic == freezed
          ? _value.amountBasic
          : amountBasic // ignore: cast_nullable_to_non_nullable
              as int,
      locateType: locateType == freezed
          ? _value.locateType
          : locateType // ignore: cast_nullable_to_non_nullable
              as LocateType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shipment with DiagnosticableTreeMixin implements _Shipment {
  const _$_Shipment(
      {required this.createdAt,
      required this.updatedAt,
      required this.wishedDeliveryTime,
      required this.shippingId,
      required this.orderDbId,
      required this.managerId,
      this.uncleId,
      this.trackingNo,
      required this.prodOrderId,
      required this.shipMethod,
      required this.additionalInfo,
      required this.paid,
      this.weightUnit,
      this.weight,
      this.amountByWeight,
      this.sizeUnit,
      this.size,
      this.amountBySize,
      required this.amountBasic,
      required this.locateType});

  factory _$_Shipment.fromJson(Map<String, dynamic> json) =>
      _$$_ShipmentFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime wishedDeliveryTime;
  @override
  final String shippingId;
  @override
  final String orderDbId;
  @override
  final String managerId;
  @override
  final String? uncleId;
  @override
  final String? trackingNo;
  @override
  final String prodOrderId;
  @override
  final ShipMethod shipMethod;
  @override
  final String additionalInfo;
  @override
  final bool paid;
  @override
  final String? weightUnit;
  @override
  final int? weight;
  @override
  final int? amountByWeight;
  @override
  final String? sizeUnit;
  @override
  final int? size;
  @override
  final int? amountBySize;
  @override
  final int amountBasic;
  @override
  final LocateType locateType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Shipment(createdAt: $createdAt, updatedAt: $updatedAt, wishedDeliveryTime: $wishedDeliveryTime, shippingId: $shippingId, orderDbId: $orderDbId, managerId: $managerId, uncleId: $uncleId, trackingNo: $trackingNo, prodOrderId: $prodOrderId, shipMethod: $shipMethod, additionalInfo: $additionalInfo, paid: $paid, weightUnit: $weightUnit, weight: $weight, amountByWeight: $amountByWeight, sizeUnit: $sizeUnit, size: $size, amountBySize: $amountBySize, amountBasic: $amountBasic, locateType: $locateType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Shipment'))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('wishedDeliveryTime', wishedDeliveryTime))
      ..add(DiagnosticsProperty('shippingId', shippingId))
      ..add(DiagnosticsProperty('orderDbId', orderDbId))
      ..add(DiagnosticsProperty('managerId', managerId))
      ..add(DiagnosticsProperty('uncleId', uncleId))
      ..add(DiagnosticsProperty('trackingNo', trackingNo))
      ..add(DiagnosticsProperty('prodOrderId', prodOrderId))
      ..add(DiagnosticsProperty('shipMethod', shipMethod))
      ..add(DiagnosticsProperty('additionalInfo', additionalInfo))
      ..add(DiagnosticsProperty('paid', paid))
      ..add(DiagnosticsProperty('weightUnit', weightUnit))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('amountByWeight', amountByWeight))
      ..add(DiagnosticsProperty('sizeUnit', sizeUnit))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('amountBySize', amountBySize))
      ..add(DiagnosticsProperty('amountBasic', amountBasic))
      ..add(DiagnosticsProperty('locateType', locateType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shipment &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.wishedDeliveryTime, wishedDeliveryTime) &&
            const DeepCollectionEquality()
                .equals(other.shippingId, shippingId) &&
            const DeepCollectionEquality().equals(other.orderDbId, orderDbId) &&
            const DeepCollectionEquality().equals(other.managerId, managerId) &&
            const DeepCollectionEquality().equals(other.uncleId, uncleId) &&
            const DeepCollectionEquality()
                .equals(other.trackingNo, trackingNo) &&
            const DeepCollectionEquality()
                .equals(other.prodOrderId, prodOrderId) &&
            const DeepCollectionEquality()
                .equals(other.shipMethod, shipMethod) &&
            const DeepCollectionEquality()
                .equals(other.additionalInfo, additionalInfo) &&
            const DeepCollectionEquality().equals(other.paid, paid) &&
            const DeepCollectionEquality()
                .equals(other.weightUnit, weightUnit) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality()
                .equals(other.amountByWeight, amountByWeight) &&
            const DeepCollectionEquality().equals(other.sizeUnit, sizeUnit) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.amountBySize, amountBySize) &&
            const DeepCollectionEquality()
                .equals(other.amountBasic, amountBasic) &&
            const DeepCollectionEquality()
                .equals(other.locateType, locateType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(wishedDeliveryTime),
        const DeepCollectionEquality().hash(shippingId),
        const DeepCollectionEquality().hash(orderDbId),
        const DeepCollectionEquality().hash(managerId),
        const DeepCollectionEquality().hash(uncleId),
        const DeepCollectionEquality().hash(trackingNo),
        const DeepCollectionEquality().hash(prodOrderId),
        const DeepCollectionEquality().hash(shipMethod),
        const DeepCollectionEquality().hash(additionalInfo),
        const DeepCollectionEquality().hash(paid),
        const DeepCollectionEquality().hash(weightUnit),
        const DeepCollectionEquality().hash(weight),
        const DeepCollectionEquality().hash(amountByWeight),
        const DeepCollectionEquality().hash(sizeUnit),
        const DeepCollectionEquality().hash(size),
        const DeepCollectionEquality().hash(amountBySize),
        const DeepCollectionEquality().hash(amountBasic),
        const DeepCollectionEquality().hash(locateType)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ShipmentCopyWith<_$_Shipment> get copyWith =>
      __$$_ShipmentCopyWithImpl<_$_Shipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipmentToJson(
      this,
    );
  }
}

abstract class _Shipment implements Shipment {
  const factory _Shipment(
      {required final DateTime createdAt,
      required final DateTime updatedAt,
      required final DateTime wishedDeliveryTime,
      required final String shippingId,
      required final String orderDbId,
      required final String managerId,
      final String? uncleId,
      final String? trackingNo,
      required final String prodOrderId,
      required final ShipMethod shipMethod,
      required final String additionalInfo,
      required final bool paid,
      final String? weightUnit,
      final int? weight,
      final int? amountByWeight,
      final String? sizeUnit,
      final int? size,
      final int? amountBySize,
      required final int amountBasic,
      required final LocateType locateType}) = _$_Shipment;

  factory _Shipment.fromJson(Map<String, dynamic> json) = _$_Shipment.fromJson;

  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime get wishedDeliveryTime;
  @override
  String get shippingId;
  @override
  String get orderDbId;
  @override
  String get managerId;
  @override
  String? get uncleId;
  @override
  String? get trackingNo;
  @override
  String get prodOrderId;
  @override
  ShipMethod get shipMethod;
  @override
  String get additionalInfo;
  @override
  bool get paid;
  @override
  String? get weightUnit;
  @override
  int? get weight;
  @override
  int? get amountByWeight;
  @override
  String? get sizeUnit;
  @override
  int? get size;
  @override
  int? get amountBySize;
  @override
  int get amountBasic;
  @override
  LocateType get locateType;
  @override
  @JsonKey(ignore: true)
  _$$_ShipmentCopyWith<_$_Shipment> get copyWith =>
      throw _privateConstructorUsedError;
}

Locate _$LocateFromJson(Map<String, dynamic> json) {
  return _Locate.fromJson(json);
}

/// @nodoc
mixin _$Locate {
  String? get code => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;
  int? get latitude => throw _privateConstructorUsedError;
  int? get longitude => throw _privateConstructorUsedError;
  String? get detailLocate => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  String? get town => throw _privateConstructorUsedError;
  String? get locateType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocateCopyWith<Locate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocateCopyWith<$Res> {
  factory $LocateCopyWith(Locate value, $Res Function(Locate) then) =
      _$LocateCopyWithImpl<$Res>;
  $Res call(
      {String? code,
      String alias,
      int? latitude,
      int? longitude,
      String? detailLocate,
      String? firstName,
      String? lastName,
      String? phone,
      String? postalCode,
      String country,
      String? city,
      String? county,
      String? town,
      String? locateType});
}

/// @nodoc
class _$LocateCopyWithImpl<$Res> implements $LocateCopyWith<$Res> {
  _$LocateCopyWithImpl(this._value, this._then);

  final Locate _value;
  // ignore: unused_field
  final $Res Function(Locate) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? alias = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? detailLocate = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? county = freezed,
    Object? town = freezed,
    Object? locateType = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      detailLocate: detailLocate == freezed
          ? _value.detailLocate
          : detailLocate // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      county: county == freezed
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      town: town == freezed
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String?,
      locateType: locateType == freezed
          ? _value.locateType
          : locateType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LocateCopyWith<$Res> implements $LocateCopyWith<$Res> {
  factory _$$_LocateCopyWith(_$_Locate value, $Res Function(_$_Locate) then) =
      __$$_LocateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? code,
      String alias,
      int? latitude,
      int? longitude,
      String? detailLocate,
      String? firstName,
      String? lastName,
      String? phone,
      String? postalCode,
      String country,
      String? city,
      String? county,
      String? town,
      String? locateType});
}

/// @nodoc
class __$$_LocateCopyWithImpl<$Res> extends _$LocateCopyWithImpl<$Res>
    implements _$$_LocateCopyWith<$Res> {
  __$$_LocateCopyWithImpl(_$_Locate _value, $Res Function(_$_Locate) _then)
      : super(_value, (v) => _then(v as _$_Locate));

  @override
  _$_Locate get _value => super._value as _$_Locate;

  @override
  $Res call({
    Object? code = freezed,
    Object? alias = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? detailLocate = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? county = freezed,
    Object? town = freezed,
    Object? locateType = freezed,
  }) {
    return _then(_$_Locate(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      detailLocate: detailLocate == freezed
          ? _value.detailLocate
          : detailLocate // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      county: county == freezed
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      town: town == freezed
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String?,
      locateType: locateType == freezed
          ? _value.locateType
          : locateType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Locate with DiagnosticableTreeMixin implements _Locate {
  const _$_Locate(
      {this.code,
      required this.alias,
      this.latitude,
      this.longitude,
      this.detailLocate,
      this.firstName,
      this.lastName,
      this.phone,
      this.postalCode,
      required this.country,
      this.city,
      this.county,
      this.town,
      required this.locateType});

  factory _$_Locate.fromJson(Map<String, dynamic> json) =>
      _$$_LocateFromJson(json);

  @override
  final String? code;
  @override
  final String alias;
  @override
  final int? latitude;
  @override
  final int? longitude;
  @override
  final String? detailLocate;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phone;
  @override
  final String? postalCode;
  @override
  final String country;
  @override
  final String? city;
  @override
  final String? county;
  @override
  final String? town;
  @override
  final String? locateType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Locate(code: $code, alias: $alias, latitude: $latitude, longitude: $longitude, detailLocate: $detailLocate, firstName: $firstName, lastName: $lastName, phone: $phone, postalCode: $postalCode, country: $country, city: $city, county: $county, town: $town, locateType: $locateType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Locate'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('alias', alias))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('detailLocate', detailLocate))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('postalCode', postalCode))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('county', county))
      ..add(DiagnosticsProperty('town', town))
      ..add(DiagnosticsProperty('locateType', locateType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Locate &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.alias, alias) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.detailLocate, detailLocate) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.county, county) &&
            const DeepCollectionEquality().equals(other.town, town) &&
            const DeepCollectionEquality()
                .equals(other.locateType, locateType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(alias),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(detailLocate),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(county),
      const DeepCollectionEquality().hash(town),
      const DeepCollectionEquality().hash(locateType));

  @JsonKey(ignore: true)
  @override
  _$$_LocateCopyWith<_$_Locate> get copyWith =>
      __$$_LocateCopyWithImpl<_$_Locate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocateToJson(
      this,
    );
  }
}

abstract class _Locate implements Locate {
  const factory _Locate(
      {final String? code,
      required final String alias,
      final int? latitude,
      final int? longitude,
      final String? detailLocate,
      final String? firstName,
      final String? lastName,
      final String? phone,
      final String? postalCode,
      required final String country,
      final String? city,
      final String? county,
      final String? town,
      required final String? locateType}) = _$_Locate;

  factory _Locate.fromJson(Map<String, dynamic> json) = _$_Locate.fromJson;

  @override
  String? get code;
  @override
  String get alias;
  @override
  int? get latitude;
  @override
  int? get longitude;
  @override
  String? get detailLocate;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get phone;
  @override
  String? get postalCode;
  @override
  String get country;
  @override
  String? get city;
  @override
  String? get county;
  @override
  String? get town;
  @override
  String? get locateType;
  @override
  @JsonKey(ignore: true)
  _$$_LocateCopyWith<_$_Locate> get copyWith =>
      throw _privateConstructorUsedError;
}
