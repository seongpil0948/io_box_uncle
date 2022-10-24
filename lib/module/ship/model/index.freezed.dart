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
  GarmentOrder get garmentOrder => throw _privateConstructorUsedError;
  ProdOrder get order => throw _privateConstructorUsedError;
  IoUser get shopUser => throw _privateConstructorUsedError;
  IoUser get vendorUser => throw _privateConstructorUsedError;
  IoUser get managerUser => throw _privateConstructorUsedError;
  VendorGarment get vendorGarment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipOrderCopyWith<ShipOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipOrderCopyWith<$Res> {
  factory $ShipOrderCopyWith(ShipOrder value, $Res Function(ShipOrder) then) =
      _$ShipOrderCopyWithImpl<$Res, ShipOrder>;
  @useResult
  $Res call(
      {Shipment shipment,
      GarmentOrder garmentOrder,
      ProdOrder order,
      IoUser shopUser,
      IoUser vendorUser,
      IoUser managerUser,
      VendorGarment vendorGarment});

  $ShipmentCopyWith<$Res> get shipment;
  $GarmentOrderCopyWith<$Res> get garmentOrder;
  $ProdOrderCopyWith<$Res> get order;
  $IoUserCopyWith<$Res> get shopUser;
  $IoUserCopyWith<$Res> get vendorUser;
  $IoUserCopyWith<$Res> get managerUser;
  $VendorGarmentCopyWith<$Res> get vendorGarment;
}

/// @nodoc
class _$ShipOrderCopyWithImpl<$Res, $Val extends ShipOrder>
    implements $ShipOrderCopyWith<$Res> {
  _$ShipOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipment = null,
    Object? garmentOrder = null,
    Object? order = null,
    Object? shopUser = null,
    Object? vendorUser = null,
    Object? managerUser = null,
    Object? vendorGarment = null,
  }) {
    return _then(_value.copyWith(
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as Shipment,
      garmentOrder: null == garmentOrder
          ? _value.garmentOrder
          : garmentOrder // ignore: cast_nullable_to_non_nullable
              as GarmentOrder,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as ProdOrder,
      shopUser: null == shopUser
          ? _value.shopUser
          : shopUser // ignore: cast_nullable_to_non_nullable
              as IoUser,
      vendorUser: null == vendorUser
          ? _value.vendorUser
          : vendorUser // ignore: cast_nullable_to_non_nullable
              as IoUser,
      managerUser: null == managerUser
          ? _value.managerUser
          : managerUser // ignore: cast_nullable_to_non_nullable
              as IoUser,
      vendorGarment: null == vendorGarment
          ? _value.vendorGarment
          : vendorGarment // ignore: cast_nullable_to_non_nullable
              as VendorGarment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShipmentCopyWith<$Res> get shipment {
    return $ShipmentCopyWith<$Res>(_value.shipment, (value) {
      return _then(_value.copyWith(shipment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GarmentOrderCopyWith<$Res> get garmentOrder {
    return $GarmentOrderCopyWith<$Res>(_value.garmentOrder, (value) {
      return _then(_value.copyWith(garmentOrder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProdOrderCopyWith<$Res> get order {
    return $ProdOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IoUserCopyWith<$Res> get shopUser {
    return $IoUserCopyWith<$Res>(_value.shopUser, (value) {
      return _then(_value.copyWith(shopUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IoUserCopyWith<$Res> get vendorUser {
    return $IoUserCopyWith<$Res>(_value.vendorUser, (value) {
      return _then(_value.copyWith(vendorUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IoUserCopyWith<$Res> get managerUser {
    return $IoUserCopyWith<$Res>(_value.managerUser, (value) {
      return _then(_value.copyWith(managerUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorGarmentCopyWith<$Res> get vendorGarment {
    return $VendorGarmentCopyWith<$Res>(_value.vendorGarment, (value) {
      return _then(_value.copyWith(vendorGarment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShipOrderCopyWith<$Res> implements $ShipOrderCopyWith<$Res> {
  factory _$$_ShipOrderCopyWith(
          _$_ShipOrder value, $Res Function(_$_ShipOrder) then) =
      __$$_ShipOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Shipment shipment,
      GarmentOrder garmentOrder,
      ProdOrder order,
      IoUser shopUser,
      IoUser vendorUser,
      IoUser managerUser,
      VendorGarment vendorGarment});

  @override
  $ShipmentCopyWith<$Res> get shipment;
  @override
  $GarmentOrderCopyWith<$Res> get garmentOrder;
  @override
  $ProdOrderCopyWith<$Res> get order;
  @override
  $IoUserCopyWith<$Res> get shopUser;
  @override
  $IoUserCopyWith<$Res> get vendorUser;
  @override
  $IoUserCopyWith<$Res> get managerUser;
  @override
  $VendorGarmentCopyWith<$Res> get vendorGarment;
}

/// @nodoc
class __$$_ShipOrderCopyWithImpl<$Res>
    extends _$ShipOrderCopyWithImpl<$Res, _$_ShipOrder>
    implements _$$_ShipOrderCopyWith<$Res> {
  __$$_ShipOrderCopyWithImpl(
      _$_ShipOrder _value, $Res Function(_$_ShipOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipment = null,
    Object? garmentOrder = null,
    Object? order = null,
    Object? shopUser = null,
    Object? vendorUser = null,
    Object? managerUser = null,
    Object? vendorGarment = null,
  }) {
    return _then(_$_ShipOrder(
      shipment: null == shipment
          ? _value.shipment
          : shipment // ignore: cast_nullable_to_non_nullable
              as Shipment,
      garmentOrder: null == garmentOrder
          ? _value.garmentOrder
          : garmentOrder // ignore: cast_nullable_to_non_nullable
              as GarmentOrder,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as ProdOrder,
      shopUser: null == shopUser
          ? _value.shopUser
          : shopUser // ignore: cast_nullable_to_non_nullable
              as IoUser,
      vendorUser: null == vendorUser
          ? _value.vendorUser
          : vendorUser // ignore: cast_nullable_to_non_nullable
              as IoUser,
      managerUser: null == managerUser
          ? _value.managerUser
          : managerUser // ignore: cast_nullable_to_non_nullable
              as IoUser,
      vendorGarment: null == vendorGarment
          ? _value.vendorGarment
          : vendorGarment // ignore: cast_nullable_to_non_nullable
              as VendorGarment,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ShipOrder extends _ShipOrder {
  const _$_ShipOrder(
      {required this.shipment,
      required this.garmentOrder,
      required this.order,
      required this.shopUser,
      required this.vendorUser,
      required this.managerUser,
      required this.vendorGarment})
      : super._();

  factory _$_ShipOrder.fromJson(Map<String, dynamic> json) =>
      _$$_ShipOrderFromJson(json);

  @override
  final Shipment shipment;
  @override
  final GarmentOrder garmentOrder;
  @override
  final ProdOrder order;
  @override
  final IoUser shopUser;
  @override
  final IoUser vendorUser;
  @override
  final IoUser managerUser;
  @override
  final VendorGarment vendorGarment;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipOrderCopyWith<_$_ShipOrder> get copyWith =>
      __$$_ShipOrderCopyWithImpl<_$_ShipOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipOrderToJson(
      this,
    );
  }
}

abstract class _ShipOrder extends ShipOrder {
  const factory _ShipOrder(
      {required final Shipment shipment,
      required final GarmentOrder garmentOrder,
      required final ProdOrder order,
      required final IoUser shopUser,
      required final IoUser vendorUser,
      required final IoUser managerUser,
      required final VendorGarment vendorGarment}) = _$_ShipOrder;
  const _ShipOrder._() : super._();

  factory _ShipOrder.fromJson(Map<String, dynamic> json) =
      _$_ShipOrder.fromJson;

  @override
  Shipment get shipment;
  @override
  GarmentOrder get garmentOrder;
  @override
  ProdOrder get order;
  @override
  IoUser get shopUser;
  @override
  IoUser get vendorUser;
  @override
  IoUser get managerUser;
  @override
  VendorGarment get vendorGarment;
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
  DateTime? get doneDate => throw _privateConstructorUsedError;
  DateTime? get tossDate => throw _privateConstructorUsedError;
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
      _$GarmentOrderCopyWithImpl<$Res, GarmentOrder>;
  @useResult
  $Res call(
      {DateTime orderDate,
      DateTime? doneDate,
      DateTime? tossDate,
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
class _$GarmentOrderCopyWithImpl<$Res, $Val extends GarmentOrder>
    implements $GarmentOrderCopyWith<$Res> {
  _$GarmentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDate = null,
    Object? doneDate = freezed,
    Object? tossDate = freezed,
    Object? dbId = null,
    Object? shopId = null,
    Object? shipManagerId = null,
    Object? orderIds = null,
    Object? itemIds = null,
    Object? subOrderIds = null,
    Object? vendorIds = null,
    Object? states = null,
    Object? actualAmount = null,
    Object? initialAmount = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doneDate: freezed == doneDate
          ? _value.doneDate
          : doneDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tossDate: freezed == tossDate
          ? _value.tossDate
          : tossDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dbId: null == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shipManagerId: null == shipManagerId
          ? _value.shipManagerId
          : shipManagerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderIds: null == orderIds
          ? _value.orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemIds: null == itemIds
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subOrderIds: null == subOrderIds
          ? _value.subOrderIds
          : subOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorIds: null == vendorIds
          ? _value.vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      states: null == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<OrderState>,
      actualAmount: null == actualAmount
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      initialAmount: null == initialAmount
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProdOrder>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderAmountCopyWith<$Res> get actualAmount {
    return $OrderAmountCopyWith<$Res>(_value.actualAmount, (value) {
      return _then(_value.copyWith(actualAmount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderAmountCopyWith<$Res> get initialAmount {
    return $OrderAmountCopyWith<$Res>(_value.initialAmount, (value) {
      return _then(_value.copyWith(initialAmount: value) as $Val);
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
  @useResult
  $Res call(
      {DateTime orderDate,
      DateTime? doneDate,
      DateTime? tossDate,
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
    extends _$GarmentOrderCopyWithImpl<$Res, _$_GarmentOrder>
    implements _$$_GarmentOrderCopyWith<$Res> {
  __$$_GarmentOrderCopyWithImpl(
      _$_GarmentOrder _value, $Res Function(_$_GarmentOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDate = null,
    Object? doneDate = freezed,
    Object? tossDate = freezed,
    Object? dbId = null,
    Object? shopId = null,
    Object? shipManagerId = null,
    Object? orderIds = null,
    Object? itemIds = null,
    Object? subOrderIds = null,
    Object? vendorIds = null,
    Object? states = null,
    Object? actualAmount = null,
    Object? initialAmount = null,
    Object? items = null,
  }) {
    return _then(_$_GarmentOrder(
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      doneDate: freezed == doneDate
          ? _value.doneDate
          : doneDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tossDate: freezed == tossDate
          ? _value.tossDate
          : tossDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dbId: null == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      shipManagerId: null == shipManagerId
          ? _value.shipManagerId
          : shipManagerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderIds: null == orderIds
          ? _value._orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemIds: null == itemIds
          ? _value._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subOrderIds: null == subOrderIds
          ? _value._subOrderIds
          : subOrderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorIds: null == vendorIds
          ? _value._vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      states: null == states
          ? _value._states
          : states // ignore: cast_nullable_to_non_nullable
              as List<OrderState>,
      actualAmount: null == actualAmount
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      initialAmount: null == initialAmount
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProdOrder>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GarmentOrder extends _GarmentOrder {
  const _$_GarmentOrder(
      {required this.orderDate,
      this.doneDate,
      this.tossDate,
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
        _items = items,
        super._();

  factory _$_GarmentOrder.fromJson(Map<String, dynamic> json) =>
      _$$_GarmentOrderFromJson(json);

  @override
  final DateTime orderDate;
  @override
  final DateTime? doneDate;
  @override
  final DateTime? tossDate;
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GarmentOrderCopyWith<_$_GarmentOrder> get copyWith =>
      __$$_GarmentOrderCopyWithImpl<_$_GarmentOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GarmentOrderToJson(
      this,
    );
  }
}

abstract class _GarmentOrder extends GarmentOrder {
  const factory _GarmentOrder(
      {required final DateTime orderDate,
      final DateTime? doneDate,
      final DateTime? tossDate,
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
  const _GarmentOrder._() : super._();

  factory _GarmentOrder.fromJson(Map<String, dynamic> json) =
      _$_GarmentOrder.fromJson;

  @override
  DateTime get orderDate;
  @override
  DateTime? get doneDate;
  @override
  DateTime? get tossDate;
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
  int get pureAmount => throw _privateConstructorUsedError; // 순수 상품금액
  int get orderAmount => throw _privateConstructorUsedError;
  int? get pickFeeAmount => throw _privateConstructorUsedError;
  int? get pickFeeDiscountAmount => throw _privateConstructorUsedError;
  bool get paymentConfirm => throw _privateConstructorUsedError;
  PayMethod? get paymentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderAmountCopyWith<OrderAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderAmountCopyWith<$Res> {
  factory $OrderAmountCopyWith(
          OrderAmount value, $Res Function(OrderAmount) then) =
      _$OrderAmountCopyWithImpl<$Res, OrderAmount>;
  @useResult
  $Res call(
      {int shipFeeAmount,
      int shipFeeDiscountAmount,
      int tax,
      int paidAmount,
      BoolM paid,
      int pureAmount,
      int orderAmount,
      int? pickFeeAmount,
      int? pickFeeDiscountAmount,
      bool paymentConfirm,
      PayMethod? paymentMethod});
}

/// @nodoc
class _$OrderAmountCopyWithImpl<$Res, $Val extends OrderAmount>
    implements $OrderAmountCopyWith<$Res> {
  _$OrderAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipFeeAmount = null,
    Object? shipFeeDiscountAmount = null,
    Object? tax = null,
    Object? paidAmount = null,
    Object? paid = null,
    Object? pureAmount = null,
    Object? orderAmount = null,
    Object? pickFeeAmount = freezed,
    Object? pickFeeDiscountAmount = freezed,
    Object? paymentConfirm = null,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      shipFeeAmount: null == shipFeeAmount
          ? _value.shipFeeAmount
          : shipFeeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      shipFeeDiscountAmount: null == shipFeeDiscountAmount
          ? _value.shipFeeDiscountAmount
          : shipFeeDiscountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as BoolM,
      pureAmount: null == pureAmount
          ? _value.pureAmount
          : pureAmount // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as int,
      pickFeeAmount: freezed == pickFeeAmount
          ? _value.pickFeeAmount
          : pickFeeAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      pickFeeDiscountAmount: freezed == pickFeeDiscountAmount
          ? _value.pickFeeDiscountAmount
          : pickFeeDiscountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentConfirm: null == paymentConfirm
          ? _value.paymentConfirm
          : paymentConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PayMethod?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderAmountCopyWith<$Res>
    implements $OrderAmountCopyWith<$Res> {
  factory _$$_OrderAmountCopyWith(
          _$_OrderAmount value, $Res Function(_$_OrderAmount) then) =
      __$$_OrderAmountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int shipFeeAmount,
      int shipFeeDiscountAmount,
      int tax,
      int paidAmount,
      BoolM paid,
      int pureAmount,
      int orderAmount,
      int? pickFeeAmount,
      int? pickFeeDiscountAmount,
      bool paymentConfirm,
      PayMethod? paymentMethod});
}

/// @nodoc
class __$$_OrderAmountCopyWithImpl<$Res>
    extends _$OrderAmountCopyWithImpl<$Res, _$_OrderAmount>
    implements _$$_OrderAmountCopyWith<$Res> {
  __$$_OrderAmountCopyWithImpl(
      _$_OrderAmount _value, $Res Function(_$_OrderAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shipFeeAmount = null,
    Object? shipFeeDiscountAmount = null,
    Object? tax = null,
    Object? paidAmount = null,
    Object? paid = null,
    Object? pureAmount = null,
    Object? orderAmount = null,
    Object? pickFeeAmount = freezed,
    Object? pickFeeDiscountAmount = freezed,
    Object? paymentConfirm = null,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$_OrderAmount(
      shipFeeAmount: null == shipFeeAmount
          ? _value.shipFeeAmount
          : shipFeeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      shipFeeDiscountAmount: null == shipFeeDiscountAmount
          ? _value.shipFeeDiscountAmount
          : shipFeeDiscountAmount // ignore: cast_nullable_to_non_nullable
              as int,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as BoolM,
      pureAmount: null == pureAmount
          ? _value.pureAmount
          : pureAmount // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as int,
      pickFeeAmount: freezed == pickFeeAmount
          ? _value.pickFeeAmount
          : pickFeeAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      pickFeeDiscountAmount: freezed == pickFeeDiscountAmount
          ? _value.pickFeeDiscountAmount
          : pickFeeDiscountAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentConfirm: null == paymentConfirm
          ? _value.paymentConfirm
          : paymentConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PayMethod?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderAmount extends _OrderAmount {
  const _$_OrderAmount(
      {required this.shipFeeAmount,
      required this.shipFeeDiscountAmount,
      required this.tax,
      required this.paidAmount,
      required this.paid,
      required this.pureAmount,
      required this.orderAmount,
      required this.pickFeeAmount,
      required this.pickFeeDiscountAmount,
      required this.paymentConfirm,
      this.paymentMethod})
      : super._();

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
// 순수 상품금액
  @override
  final int orderAmount;
  @override
  final int? pickFeeAmount;
  @override
  final int? pickFeeDiscountAmount;
  @override
  final bool paymentConfirm;
  @override
  final PayMethod? paymentMethod;

  @override
  String toString() {
    return 'OrderAmount(shipFeeAmount: $shipFeeAmount, shipFeeDiscountAmount: $shipFeeDiscountAmount, tax: $tax, paidAmount: $paidAmount, paid: $paid, pureAmount: $pureAmount, orderAmount: $orderAmount, pickFeeAmount: $pickFeeAmount, pickFeeDiscountAmount: $pickFeeDiscountAmount, paymentConfirm: $paymentConfirm, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderAmount &&
            (identical(other.shipFeeAmount, shipFeeAmount) ||
                other.shipFeeAmount == shipFeeAmount) &&
            (identical(other.shipFeeDiscountAmount, shipFeeDiscountAmount) ||
                other.shipFeeDiscountAmount == shipFeeDiscountAmount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.pureAmount, pureAmount) ||
                other.pureAmount == pureAmount) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount) &&
            (identical(other.pickFeeAmount, pickFeeAmount) ||
                other.pickFeeAmount == pickFeeAmount) &&
            (identical(other.pickFeeDiscountAmount, pickFeeDiscountAmount) ||
                other.pickFeeDiscountAmount == pickFeeDiscountAmount) &&
            (identical(other.paymentConfirm, paymentConfirm) ||
                other.paymentConfirm == paymentConfirm) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shipFeeAmount,
      shipFeeDiscountAmount,
      tax,
      paidAmount,
      paid,
      pureAmount,
      orderAmount,
      pickFeeAmount,
      pickFeeDiscountAmount,
      paymentConfirm,
      paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderAmountCopyWith<_$_OrderAmount> get copyWith =>
      __$$_OrderAmountCopyWithImpl<_$_OrderAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderAmountToJson(
      this,
    );
  }
}

abstract class _OrderAmount extends OrderAmount {
  const factory _OrderAmount(
      {required final int shipFeeAmount,
      required final int shipFeeDiscountAmount,
      required final int tax,
      required final int paidAmount,
      required final BoolM paid,
      required final int pureAmount,
      required final int orderAmount,
      required final int? pickFeeAmount,
      required final int? pickFeeDiscountAmount,
      required final bool paymentConfirm,
      final PayMethod? paymentMethod}) = _$_OrderAmount;
  const _OrderAmount._() : super._();

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
  @override // 순수 상품금액
  int get orderAmount;
  @override
  int? get pickFeeAmount;
  @override
  int? get pickFeeDiscountAmount;
  @override
  bool get paymentConfirm;
  @override
  PayMethod? get paymentMethod;
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
  String get shopId => throw _privateConstructorUsedError;
  String get orderDbId => throw _privateConstructorUsedError;
  String get shopProdId => throw _privateConstructorUsedError;
  String get shipmentId => throw _privateConstructorUsedError;
  int get orderCnt => throw _privateConstructorUsedError;
  int get activeCnt => throw _privateConstructorUsedError;
  int get pendingCnt => throw _privateConstructorUsedError;
  OrderAmount get actualAmount => throw _privateConstructorUsedError;
  OrderAmount get initialAmount => throw _privateConstructorUsedError;
  OrderState get state => throw _privateConstructorUsedError;
  String? get sizeUnit => throw _privateConstructorUsedError;
  String? get weightUnit => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdOrderCopyWith<ProdOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdOrderCopyWith<$Res> {
  factory $ProdOrderCopyWith(ProdOrder value, $Res Function(ProdOrder) then) =
      _$ProdOrderCopyWithImpl<$Res, ProdOrder>;
  @useResult
  $Res call(
      {String id,
      String vendorId,
      String vendorProdId,
      String shopId,
      String orderDbId,
      String shopProdId,
      String shipmentId,
      int orderCnt,
      int activeCnt,
      int pendingCnt,
      OrderAmount actualAmount,
      OrderAmount initialAmount,
      OrderState state,
      String? sizeUnit,
      String? weightUnit,
      int? size,
      int? weight});

  $OrderAmountCopyWith<$Res> get actualAmount;
  $OrderAmountCopyWith<$Res> get initialAmount;
}

/// @nodoc
class _$ProdOrderCopyWithImpl<$Res, $Val extends ProdOrder>
    implements $ProdOrderCopyWith<$Res> {
  _$ProdOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorId = null,
    Object? vendorProdId = null,
    Object? shopId = null,
    Object? orderDbId = null,
    Object? shopProdId = null,
    Object? shipmentId = null,
    Object? orderCnt = null,
    Object? activeCnt = null,
    Object? pendingCnt = null,
    Object? actualAmount = null,
    Object? initialAmount = null,
    Object? state = null,
    Object? sizeUnit = freezed,
    Object? weightUnit = freezed,
    Object? size = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorProdId: null == vendorProdId
          ? _value.vendorProdId
          : vendorProdId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDbId: null == orderDbId
          ? _value.orderDbId
          : orderDbId // ignore: cast_nullable_to_non_nullable
              as String,
      shopProdId: null == shopProdId
          ? _value.shopProdId
          : shopProdId // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCnt: null == orderCnt
          ? _value.orderCnt
          : orderCnt // ignore: cast_nullable_to_non_nullable
              as int,
      activeCnt: null == activeCnt
          ? _value.activeCnt
          : activeCnt // ignore: cast_nullable_to_non_nullable
              as int,
      pendingCnt: null == pendingCnt
          ? _value.pendingCnt
          : pendingCnt // ignore: cast_nullable_to_non_nullable
              as int,
      actualAmount: null == actualAmount
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      initialAmount: null == initialAmount
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderState,
      sizeUnit: freezed == sizeUnit
          ? _value.sizeUnit
          : sizeUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      weightUnit: freezed == weightUnit
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderAmountCopyWith<$Res> get actualAmount {
    return $OrderAmountCopyWith<$Res>(_value.actualAmount, (value) {
      return _then(_value.copyWith(actualAmount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderAmountCopyWith<$Res> get initialAmount {
    return $OrderAmountCopyWith<$Res>(_value.initialAmount, (value) {
      return _then(_value.copyWith(initialAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProdOrderCopyWith<$Res> implements $ProdOrderCopyWith<$Res> {
  factory _$$_ProdOrderCopyWith(
          _$_ProdOrder value, $Res Function(_$_ProdOrder) then) =
      __$$_ProdOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String vendorId,
      String vendorProdId,
      String shopId,
      String orderDbId,
      String shopProdId,
      String shipmentId,
      int orderCnt,
      int activeCnt,
      int pendingCnt,
      OrderAmount actualAmount,
      OrderAmount initialAmount,
      OrderState state,
      String? sizeUnit,
      String? weightUnit,
      int? size,
      int? weight});

  @override
  $OrderAmountCopyWith<$Res> get actualAmount;
  @override
  $OrderAmountCopyWith<$Res> get initialAmount;
}

/// @nodoc
class __$$_ProdOrderCopyWithImpl<$Res>
    extends _$ProdOrderCopyWithImpl<$Res, _$_ProdOrder>
    implements _$$_ProdOrderCopyWith<$Res> {
  __$$_ProdOrderCopyWithImpl(
      _$_ProdOrder _value, $Res Function(_$_ProdOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendorId = null,
    Object? vendorProdId = null,
    Object? shopId = null,
    Object? orderDbId = null,
    Object? shopProdId = null,
    Object? shipmentId = null,
    Object? orderCnt = null,
    Object? activeCnt = null,
    Object? pendingCnt = null,
    Object? actualAmount = null,
    Object? initialAmount = null,
    Object? state = null,
    Object? sizeUnit = freezed,
    Object? weightUnit = freezed,
    Object? size = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$_ProdOrder(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorProdId: null == vendorProdId
          ? _value.vendorProdId
          : vendorProdId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDbId: null == orderDbId
          ? _value.orderDbId
          : orderDbId // ignore: cast_nullable_to_non_nullable
              as String,
      shopProdId: null == shopProdId
          ? _value.shopProdId
          : shopProdId // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCnt: null == orderCnt
          ? _value.orderCnt
          : orderCnt // ignore: cast_nullable_to_non_nullable
              as int,
      activeCnt: null == activeCnt
          ? _value.activeCnt
          : activeCnt // ignore: cast_nullable_to_non_nullable
              as int,
      pendingCnt: null == pendingCnt
          ? _value.pendingCnt
          : pendingCnt // ignore: cast_nullable_to_non_nullable
              as int,
      actualAmount: null == actualAmount
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      initialAmount: null == initialAmount
          ? _value.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderState,
      sizeUnit: freezed == sizeUnit
          ? _value.sizeUnit
          : sizeUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      weightUnit: freezed == weightUnit
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProdOrder extends _ProdOrder {
  const _$_ProdOrder(
      {required this.id,
      required this.vendorId,
      required this.vendorProdId,
      required this.shopId,
      required this.orderDbId,
      required this.shopProdId,
      required this.shipmentId,
      required this.orderCnt,
      required this.activeCnt,
      required this.pendingCnt,
      required this.actualAmount,
      required this.initialAmount,
      required this.state,
      this.sizeUnit,
      this.weightUnit,
      this.size,
      this.weight})
      : super._();

  factory _$_ProdOrder.fromJson(Map<String, dynamic> json) =>
      _$$_ProdOrderFromJson(json);

  @override
  final String id;
  @override
  final String vendorId;
  @override
  final String vendorProdId;
  @override
  final String shopId;
  @override
  final String orderDbId;
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
  final String? sizeUnit;
  @override
  final String? weightUnit;
  @override
  final int? size;
  @override
  final int? weight;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProdOrderCopyWith<_$_ProdOrder> get copyWith =>
      __$$_ProdOrderCopyWithImpl<_$_ProdOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProdOrderToJson(
      this,
    );
  }
}

abstract class _ProdOrder extends ProdOrder {
  const factory _ProdOrder(
      {required final String id,
      required final String vendorId,
      required final String vendorProdId,
      required final String shopId,
      required final String orderDbId,
      required final String shopProdId,
      required final String shipmentId,
      required final int orderCnt,
      required final int activeCnt,
      required final int pendingCnt,
      required final OrderAmount actualAmount,
      required final OrderAmount initialAmount,
      required final OrderState state,
      final String? sizeUnit,
      final String? weightUnit,
      final int? size,
      final int? weight}) = _$_ProdOrder;
  const _ProdOrder._() : super._();

  factory _ProdOrder.fromJson(Map<String, dynamic> json) =
      _$_ProdOrder.fromJson;

  @override
  String get id;
  @override
  String get vendorId;
  @override
  String get vendorProdId;
  @override
  String get shopId;
  @override
  String get orderDbId;
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
  String? get sizeUnit;
  @override
  String? get weightUnit;
  @override
  int? get size;
  @override
  int? get weight;
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
  int get shipFeeBasic => throw _privateConstructorUsedError;
  int get pickupFeeBasic => throw _privateConstructorUsedError;
  Locate get returnAddress => throw _privateConstructorUsedError;
  Locate get startAddress => throw _privateConstructorUsedError;
  Locate get receiveAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipmentCopyWith<Shipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentCopyWith<$Res> {
  factory $ShipmentCopyWith(Shipment value, $Res Function(Shipment) then) =
      _$ShipmentCopyWithImpl<$Res, Shipment>;
  @useResult
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
      int shipFeeBasic,
      int pickupFeeBasic,
      Locate returnAddress,
      Locate startAddress,
      Locate receiveAddress});

  $LocateCopyWith<$Res> get returnAddress;
  $LocateCopyWith<$Res> get startAddress;
  $LocateCopyWith<$Res> get receiveAddress;
}

/// @nodoc
class _$ShipmentCopyWithImpl<$Res, $Val extends Shipment>
    implements $ShipmentCopyWith<$Res> {
  _$ShipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? wishedDeliveryTime = null,
    Object? shippingId = null,
    Object? orderDbId = null,
    Object? managerId = null,
    Object? uncleId = freezed,
    Object? trackingNo = freezed,
    Object? prodOrderId = null,
    Object? shipMethod = null,
    Object? additionalInfo = null,
    Object? paid = null,
    Object? weightUnit = freezed,
    Object? weight = freezed,
    Object? amountByWeight = freezed,
    Object? sizeUnit = freezed,
    Object? size = freezed,
    Object? amountBySize = freezed,
    Object? shipFeeBasic = null,
    Object? pickupFeeBasic = null,
    Object? returnAddress = null,
    Object? startAddress = null,
    Object? receiveAddress = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      wishedDeliveryTime: null == wishedDeliveryTime
          ? _value.wishedDeliveryTime
          : wishedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      shippingId: null == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDbId: null == orderDbId
          ? _value.orderDbId
          : orderDbId // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: null == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
      uncleId: freezed == uncleId
          ? _value.uncleId
          : uncleId // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingNo: freezed == trackingNo
          ? _value.trackingNo
          : trackingNo // ignore: cast_nullable_to_non_nullable
              as String?,
      prodOrderId: null == prodOrderId
          ? _value.prodOrderId
          : prodOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      shipMethod: null == shipMethod
          ? _value.shipMethod
          : shipMethod // ignore: cast_nullable_to_non_nullable
              as ShipMethod,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      weightUnit: freezed == weightUnit
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      amountByWeight: freezed == amountByWeight
          ? _value.amountByWeight
          : amountByWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeUnit: freezed == sizeUnit
          ? _value.sizeUnit
          : sizeUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      amountBySize: freezed == amountBySize
          ? _value.amountBySize
          : amountBySize // ignore: cast_nullable_to_non_nullable
              as int?,
      shipFeeBasic: null == shipFeeBasic
          ? _value.shipFeeBasic
          : shipFeeBasic // ignore: cast_nullable_to_non_nullable
              as int,
      pickupFeeBasic: null == pickupFeeBasic
          ? _value.pickupFeeBasic
          : pickupFeeBasic // ignore: cast_nullable_to_non_nullable
              as int,
      returnAddress: null == returnAddress
          ? _value.returnAddress
          : returnAddress // ignore: cast_nullable_to_non_nullable
              as Locate,
      startAddress: null == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
              as Locate,
      receiveAddress: null == receiveAddress
          ? _value.receiveAddress
          : receiveAddress // ignore: cast_nullable_to_non_nullable
              as Locate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocateCopyWith<$Res> get returnAddress {
    return $LocateCopyWith<$Res>(_value.returnAddress, (value) {
      return _then(_value.copyWith(returnAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocateCopyWith<$Res> get startAddress {
    return $LocateCopyWith<$Res>(_value.startAddress, (value) {
      return _then(_value.copyWith(startAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocateCopyWith<$Res> get receiveAddress {
    return $LocateCopyWith<$Res>(_value.receiveAddress, (value) {
      return _then(_value.copyWith(receiveAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShipmentCopyWith<$Res> implements $ShipmentCopyWith<$Res> {
  factory _$$_ShipmentCopyWith(
          _$_Shipment value, $Res Function(_$_Shipment) then) =
      __$$_ShipmentCopyWithImpl<$Res>;
  @override
  @useResult
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
      int shipFeeBasic,
      int pickupFeeBasic,
      Locate returnAddress,
      Locate startAddress,
      Locate receiveAddress});

  @override
  $LocateCopyWith<$Res> get returnAddress;
  @override
  $LocateCopyWith<$Res> get startAddress;
  @override
  $LocateCopyWith<$Res> get receiveAddress;
}

/// @nodoc
class __$$_ShipmentCopyWithImpl<$Res>
    extends _$ShipmentCopyWithImpl<$Res, _$_Shipment>
    implements _$$_ShipmentCopyWith<$Res> {
  __$$_ShipmentCopyWithImpl(
      _$_Shipment _value, $Res Function(_$_Shipment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? wishedDeliveryTime = null,
    Object? shippingId = null,
    Object? orderDbId = null,
    Object? managerId = null,
    Object? uncleId = freezed,
    Object? trackingNo = freezed,
    Object? prodOrderId = null,
    Object? shipMethod = null,
    Object? additionalInfo = null,
    Object? paid = null,
    Object? weightUnit = freezed,
    Object? weight = freezed,
    Object? amountByWeight = freezed,
    Object? sizeUnit = freezed,
    Object? size = freezed,
    Object? amountBySize = freezed,
    Object? shipFeeBasic = null,
    Object? pickupFeeBasic = null,
    Object? returnAddress = null,
    Object? startAddress = null,
    Object? receiveAddress = null,
  }) {
    return _then(_$_Shipment(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      wishedDeliveryTime: null == wishedDeliveryTime
          ? _value.wishedDeliveryTime
          : wishedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      shippingId: null == shippingId
          ? _value.shippingId
          : shippingId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDbId: null == orderDbId
          ? _value.orderDbId
          : orderDbId // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: null == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
      uncleId: freezed == uncleId
          ? _value.uncleId
          : uncleId // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingNo: freezed == trackingNo
          ? _value.trackingNo
          : trackingNo // ignore: cast_nullable_to_non_nullable
              as String?,
      prodOrderId: null == prodOrderId
          ? _value.prodOrderId
          : prodOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      shipMethod: null == shipMethod
          ? _value.shipMethod
          : shipMethod // ignore: cast_nullable_to_non_nullable
              as ShipMethod,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      weightUnit: freezed == weightUnit
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      amountByWeight: freezed == amountByWeight
          ? _value.amountByWeight
          : amountByWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeUnit: freezed == sizeUnit
          ? _value.sizeUnit
          : sizeUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      amountBySize: freezed == amountBySize
          ? _value.amountBySize
          : amountBySize // ignore: cast_nullable_to_non_nullable
              as int?,
      shipFeeBasic: null == shipFeeBasic
          ? _value.shipFeeBasic
          : shipFeeBasic // ignore: cast_nullable_to_non_nullable
              as int,
      pickupFeeBasic: null == pickupFeeBasic
          ? _value.pickupFeeBasic
          : pickupFeeBasic // ignore: cast_nullable_to_non_nullable
              as int,
      returnAddress: null == returnAddress
          ? _value.returnAddress
          : returnAddress // ignore: cast_nullable_to_non_nullable
              as Locate,
      startAddress: null == startAddress
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
              as Locate,
      receiveAddress: null == receiveAddress
          ? _value.receiveAddress
          : receiveAddress // ignore: cast_nullable_to_non_nullable
              as Locate,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Shipment extends _Shipment {
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
      required this.shipFeeBasic,
      required this.pickupFeeBasic,
      required this.returnAddress,
      required this.startAddress,
      required this.receiveAddress})
      : super._();

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
  final int shipFeeBasic;
  @override
  final int pickupFeeBasic;
  @override
  final Locate returnAddress;
  @override
  final Locate startAddress;
  @override
  final Locate receiveAddress;

  @override
  String toString() {
    return 'Shipment(createdAt: $createdAt, updatedAt: $updatedAt, wishedDeliveryTime: $wishedDeliveryTime, shippingId: $shippingId, orderDbId: $orderDbId, managerId: $managerId, uncleId: $uncleId, trackingNo: $trackingNo, prodOrderId: $prodOrderId, shipMethod: $shipMethod, additionalInfo: $additionalInfo, paid: $paid, weightUnit: $weightUnit, weight: $weight, amountByWeight: $amountByWeight, sizeUnit: $sizeUnit, size: $size, amountBySize: $amountBySize, shipFeeBasic: $shipFeeBasic, pickupFeeBasic: $pickupFeeBasic, returnAddress: $returnAddress, startAddress: $startAddress, receiveAddress: $receiveAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shipment &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.wishedDeliveryTime, wishedDeliveryTime) ||
                other.wishedDeliveryTime == wishedDeliveryTime) &&
            (identical(other.shippingId, shippingId) ||
                other.shippingId == shippingId) &&
            (identical(other.orderDbId, orderDbId) ||
                other.orderDbId == orderDbId) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.uncleId, uncleId) || other.uncleId == uncleId) &&
            (identical(other.trackingNo, trackingNo) ||
                other.trackingNo == trackingNo) &&
            (identical(other.prodOrderId, prodOrderId) ||
                other.prodOrderId == prodOrderId) &&
            (identical(other.shipMethod, shipMethod) ||
                other.shipMethod == shipMethod) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.weightUnit, weightUnit) ||
                other.weightUnit == weightUnit) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.amountByWeight, amountByWeight) ||
                other.amountByWeight == amountByWeight) &&
            (identical(other.sizeUnit, sizeUnit) ||
                other.sizeUnit == sizeUnit) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.amountBySize, amountBySize) ||
                other.amountBySize == amountBySize) &&
            (identical(other.shipFeeBasic, shipFeeBasic) ||
                other.shipFeeBasic == shipFeeBasic) &&
            (identical(other.pickupFeeBasic, pickupFeeBasic) ||
                other.pickupFeeBasic == pickupFeeBasic) &&
            (identical(other.returnAddress, returnAddress) ||
                other.returnAddress == returnAddress) &&
            (identical(other.startAddress, startAddress) ||
                other.startAddress == startAddress) &&
            (identical(other.receiveAddress, receiveAddress) ||
                other.receiveAddress == receiveAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        createdAt,
        updatedAt,
        wishedDeliveryTime,
        shippingId,
        orderDbId,
        managerId,
        uncleId,
        trackingNo,
        prodOrderId,
        shipMethod,
        additionalInfo,
        paid,
        weightUnit,
        weight,
        amountByWeight,
        sizeUnit,
        size,
        amountBySize,
        shipFeeBasic,
        pickupFeeBasic,
        returnAddress,
        startAddress,
        receiveAddress
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipmentCopyWith<_$_Shipment> get copyWith =>
      __$$_ShipmentCopyWithImpl<_$_Shipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipmentToJson(
      this,
    );
  }
}

abstract class _Shipment extends Shipment {
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
      required final int shipFeeBasic,
      required final int pickupFeeBasic,
      required final Locate returnAddress,
      required final Locate startAddress,
      required final Locate receiveAddress}) = _$_Shipment;
  const _Shipment._() : super._();

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
  int get shipFeeBasic;
  @override
  int get pickupFeeBasic;
  @override
  Locate get returnAddress;
  @override
  Locate get startAddress;
  @override
  Locate get receiveAddress;
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
  LocateType? get locateType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocateCopyWith<Locate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocateCopyWith<$Res> {
  factory $LocateCopyWith(Locate value, $Res Function(Locate) then) =
      _$LocateCopyWithImpl<$Res, Locate>;
  @useResult
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
      LocateType? locateType});
}

/// @nodoc
class _$LocateCopyWithImpl<$Res, $Val extends Locate>
    implements $LocateCopyWith<$Res> {
  _$LocateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? alias = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? detailLocate = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? postalCode = freezed,
    Object? country = null,
    Object? city = freezed,
    Object? county = freezed,
    Object? town = freezed,
    Object? locateType = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      detailLocate: freezed == detailLocate
          ? _value.detailLocate
          : detailLocate // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      town: freezed == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String?,
      locateType: freezed == locateType
          ? _value.locateType
          : locateType // ignore: cast_nullable_to_non_nullable
              as LocateType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocateCopyWith<$Res> implements $LocateCopyWith<$Res> {
  factory _$$_LocateCopyWith(_$_Locate value, $Res Function(_$_Locate) then) =
      __$$_LocateCopyWithImpl<$Res>;
  @override
  @useResult
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
      LocateType? locateType});
}

/// @nodoc
class __$$_LocateCopyWithImpl<$Res>
    extends _$LocateCopyWithImpl<$Res, _$_Locate>
    implements _$$_LocateCopyWith<$Res> {
  __$$_LocateCopyWithImpl(_$_Locate _value, $Res Function(_$_Locate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? alias = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? detailLocate = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? postalCode = freezed,
    Object? country = null,
    Object? city = freezed,
    Object? county = freezed,
    Object? town = freezed,
    Object? locateType = freezed,
  }) {
    return _then(_$_Locate(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as int?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      detailLocate: freezed == detailLocate
          ? _value.detailLocate
          : detailLocate // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      town: freezed == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String?,
      locateType: freezed == locateType
          ? _value.locateType
          : locateType // ignore: cast_nullable_to_non_nullable
              as LocateType?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Locate extends _Locate {
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
      this.locateType})
      : super._();

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
  final LocateType? locateType;

  @override
  String toString() {
    return 'Locate(code: $code, alias: $alias, latitude: $latitude, longitude: $longitude, detailLocate: $detailLocate, firstName: $firstName, lastName: $lastName, phone: $phone, postalCode: $postalCode, country: $country, city: $city, county: $county, town: $town, locateType: $locateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Locate &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.detailLocate, detailLocate) ||
                other.detailLocate == detailLocate) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.locateType, locateType) ||
                other.locateType == locateType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      alias,
      latitude,
      longitude,
      detailLocate,
      firstName,
      lastName,
      phone,
      postalCode,
      country,
      city,
      county,
      town,
      locateType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocateCopyWith<_$_Locate> get copyWith =>
      __$$_LocateCopyWithImpl<_$_Locate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocateToJson(
      this,
    );
  }
}

abstract class _Locate extends Locate {
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
      final LocateType? locateType}) = _$_Locate;
  const _Locate._() : super._();

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
  LocateType? get locateType;
  @override
  @JsonKey(ignore: true)
  _$$_LocateCopyWith<_$_Locate> get copyWith =>
      throw _privateConstructorUsedError;
}
