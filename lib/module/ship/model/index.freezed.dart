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
  IoOrder get garmentOrder => throw _privateConstructorUsedError;
  OrderItem get order => throw _privateConstructorUsedError;
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
      IoOrder garmentOrder,
      OrderItem order,
      IoUser shopUser,
      IoUser vendorUser,
      IoUser managerUser,
      VendorGarment vendorGarment});

  $ShipmentCopyWith<$Res> get shipment;
  $IoOrderCopyWith<$Res> get garmentOrder;
  $OrderItemCopyWith<$Res> get order;
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
              as IoOrder,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderItem,
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
  $IoOrderCopyWith<$Res> get garmentOrder {
    return $IoOrderCopyWith<$Res>(_value.garmentOrder, (value) {
      return _then(_value.copyWith(garmentOrder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<$Res> get order {
    return $OrderItemCopyWith<$Res>(_value.order, (value) {
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
      IoOrder garmentOrder,
      OrderItem order,
      IoUser shopUser,
      IoUser vendorUser,
      IoUser managerUser,
      VendorGarment vendorGarment});

  @override
  $ShipmentCopyWith<$Res> get shipment;
  @override
  $IoOrderCopyWith<$Res> get garmentOrder;
  @override
  $OrderItemCopyWith<$Res> get order;
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
              as IoOrder,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderItem,
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
  final IoOrder garmentOrder;
  @override
  final OrderItem order;
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
      required final IoOrder garmentOrder,
      required final OrderItem order,
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
  IoOrder get garmentOrder;
  @override
  OrderItem get order;
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

IoOrder _$IoOrderFromJson(Map<String, dynamic> json) {
  return _GarmentOrder.fromJson(json);
}

/// @nodoc
mixin _$IoOrder {
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  DateTime? get doneAt => throw _privateConstructorUsedError;
  DateTime? get tossAt => throw _privateConstructorUsedError;
  String get dbId => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  int get orderCnts => throw _privateConstructorUsedError;
  int get activeCnts => throw _privateConstructorUsedError;
  int get pendingCnts => throw _privateConstructorUsedError;
  List<String> get orderIds => throw _privateConstructorUsedError;
  List<String> get shipmentIds => throw _privateConstructorUsedError;
  List<String> get vendorIds => throw _privateConstructorUsedError;
  List<String> get itemIds => throw _privateConstructorUsedError;
  String get shipManagerId => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;
  List<OrderState> get states => throw _privateConstructorUsedError;
  List<ProdType> get prodTypes => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get cancellations =>
      throw _privateConstructorUsedError;
  List<PaidInfo> get paids => throw _privateConstructorUsedError;
  List<OrderType> get orderTypes => throw _privateConstructorUsedError;
  OrderAmount get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoOrderCopyWith<IoOrder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoOrderCopyWith<$Res> {
  factory $IoOrderCopyWith(IoOrder value, $Res Function(IoOrder) then) =
      _$IoOrderCopyWithImpl<$Res, IoOrder>;
  @useResult
  $Res call(
      {DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? approvedAt,
      DateTime? paidAt,
      DateTime? doneAt,
      DateTime? tossAt,
      String dbId,
      String shopId,
      int orderCnts,
      int activeCnts,
      int pendingCnts,
      List<String> orderIds,
      List<String> shipmentIds,
      List<String> vendorIds,
      List<String> itemIds,
      String shipManagerId,
      List<OrderItem> items,
      List<OrderState> states,
      List<ProdType> prodTypes,
      List<Map<String, dynamic>> cancellations,
      List<PaidInfo> paids,
      List<OrderType> orderTypes,
      OrderAmount amount});

  $OrderAmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$IoOrderCopyWithImpl<$Res, $Val extends IoOrder>
    implements $IoOrderCopyWith<$Res> {
  _$IoOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? approvedAt = freezed,
    Object? paidAt = freezed,
    Object? doneAt = freezed,
    Object? tossAt = freezed,
    Object? dbId = null,
    Object? shopId = null,
    Object? orderCnts = null,
    Object? activeCnts = null,
    Object? pendingCnts = null,
    Object? orderIds = null,
    Object? shipmentIds = null,
    Object? vendorIds = null,
    Object? itemIds = null,
    Object? shipManagerId = null,
    Object? items = null,
    Object? states = null,
    Object? prodTypes = null,
    Object? cancellations = null,
    Object? paids = null,
    Object? orderTypes = null,
    Object? amount = null,
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
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      doneAt: freezed == doneAt
          ? _value.doneAt
          : doneAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tossAt: freezed == tossAt
          ? _value.tossAt
          : tossAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dbId: null == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCnts: null == orderCnts
          ? _value.orderCnts
          : orderCnts // ignore: cast_nullable_to_non_nullable
              as int,
      activeCnts: null == activeCnts
          ? _value.activeCnts
          : activeCnts // ignore: cast_nullable_to_non_nullable
              as int,
      pendingCnts: null == pendingCnts
          ? _value.pendingCnts
          : pendingCnts // ignore: cast_nullable_to_non_nullable
              as int,
      orderIds: null == orderIds
          ? _value.orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shipmentIds: null == shipmentIds
          ? _value.shipmentIds
          : shipmentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorIds: null == vendorIds
          ? _value.vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemIds: null == itemIds
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shipManagerId: null == shipManagerId
          ? _value.shipManagerId
          : shipManagerId // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      states: null == states
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<OrderState>,
      prodTypes: null == prodTypes
          ? _value.prodTypes
          : prodTypes // ignore: cast_nullable_to_non_nullable
              as List<ProdType>,
      cancellations: null == cancellations
          ? _value.cancellations
          : cancellations // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      paids: null == paids
          ? _value.paids
          : paids // ignore: cast_nullable_to_non_nullable
              as List<PaidInfo>,
      orderTypes: null == orderTypes
          ? _value.orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<OrderType>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderAmountCopyWith<$Res> get amount {
    return $OrderAmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GarmentOrderCopyWith<$Res>
    implements $IoOrderCopyWith<$Res> {
  factory _$$_GarmentOrderCopyWith(
          _$_GarmentOrder value, $Res Function(_$_GarmentOrder) then) =
      __$$_GarmentOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? approvedAt,
      DateTime? paidAt,
      DateTime? doneAt,
      DateTime? tossAt,
      String dbId,
      String shopId,
      int orderCnts,
      int activeCnts,
      int pendingCnts,
      List<String> orderIds,
      List<String> shipmentIds,
      List<String> vendorIds,
      List<String> itemIds,
      String shipManagerId,
      List<OrderItem> items,
      List<OrderState> states,
      List<ProdType> prodTypes,
      List<Map<String, dynamic>> cancellations,
      List<PaidInfo> paids,
      List<OrderType> orderTypes,
      OrderAmount amount});

  @override
  $OrderAmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$_GarmentOrderCopyWithImpl<$Res>
    extends _$IoOrderCopyWithImpl<$Res, _$_GarmentOrder>
    implements _$$_GarmentOrderCopyWith<$Res> {
  __$$_GarmentOrderCopyWithImpl(
      _$_GarmentOrder _value, $Res Function(_$_GarmentOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? approvedAt = freezed,
    Object? paidAt = freezed,
    Object? doneAt = freezed,
    Object? tossAt = freezed,
    Object? dbId = null,
    Object? shopId = null,
    Object? orderCnts = null,
    Object? activeCnts = null,
    Object? pendingCnts = null,
    Object? orderIds = null,
    Object? shipmentIds = null,
    Object? vendorIds = null,
    Object? itemIds = null,
    Object? shipManagerId = null,
    Object? items = null,
    Object? states = null,
    Object? prodTypes = null,
    Object? cancellations = null,
    Object? paids = null,
    Object? orderTypes = null,
    Object? amount = null,
  }) {
    return _then(_$_GarmentOrder(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      doneAt: freezed == doneAt
          ? _value.doneAt
          : doneAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tossAt: freezed == tossAt
          ? _value.tossAt
          : tossAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dbId: null == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      orderCnts: null == orderCnts
          ? _value.orderCnts
          : orderCnts // ignore: cast_nullable_to_non_nullable
              as int,
      activeCnts: null == activeCnts
          ? _value.activeCnts
          : activeCnts // ignore: cast_nullable_to_non_nullable
              as int,
      pendingCnts: null == pendingCnts
          ? _value.pendingCnts
          : pendingCnts // ignore: cast_nullable_to_non_nullable
              as int,
      orderIds: null == orderIds
          ? _value._orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shipmentIds: null == shipmentIds
          ? _value._shipmentIds
          : shipmentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorIds: null == vendorIds
          ? _value._vendorIds
          : vendorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemIds: null == itemIds
          ? _value._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shipManagerId: null == shipManagerId
          ? _value.shipManagerId
          : shipManagerId // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      states: null == states
          ? _value._states
          : states // ignore: cast_nullable_to_non_nullable
              as List<OrderState>,
      prodTypes: null == prodTypes
          ? _value._prodTypes
          : prodTypes // ignore: cast_nullable_to_non_nullable
              as List<ProdType>,
      cancellations: null == cancellations
          ? _value._cancellations
          : cancellations // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      paids: null == paids
          ? _value._paids
          : paids // ignore: cast_nullable_to_non_nullable
              as List<PaidInfo>,
      orderTypes: null == orderTypes
          ? _value._orderTypes
          : orderTypes // ignore: cast_nullable_to_non_nullable
              as List<OrderType>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GarmentOrder extends _GarmentOrder {
  const _$_GarmentOrder(
      {this.createdAt,
      this.updatedAt,
      this.approvedAt,
      this.paidAt,
      this.doneAt,
      this.tossAt,
      required this.dbId,
      required this.shopId,
      required this.orderCnts,
      required this.activeCnts,
      required this.pendingCnts,
      required final List<String> orderIds,
      required final List<String> shipmentIds,
      required final List<String> vendorIds,
      required final List<String> itemIds,
      required this.shipManagerId,
      required final List<OrderItem> items,
      required final List<OrderState> states,
      required final List<ProdType> prodTypes,
      required final List<Map<String, dynamic>> cancellations,
      required final List<PaidInfo> paids,
      required final List<OrderType> orderTypes,
      required this.amount})
      : _orderIds = orderIds,
        _shipmentIds = shipmentIds,
        _vendorIds = vendorIds,
        _itemIds = itemIds,
        _items = items,
        _states = states,
        _prodTypes = prodTypes,
        _cancellations = cancellations,
        _paids = paids,
        _orderTypes = orderTypes,
        super._();

  factory _$_GarmentOrder.fromJson(Map<String, dynamic> json) =>
      _$$_GarmentOrderFromJson(json);

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? approvedAt;
  @override
  final DateTime? paidAt;
  @override
  final DateTime? doneAt;
  @override
  final DateTime? tossAt;
  @override
  final String dbId;
  @override
  final String shopId;
  @override
  final int orderCnts;
  @override
  final int activeCnts;
  @override
  final int pendingCnts;
  final List<String> _orderIds;
  @override
  List<String> get orderIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderIds);
  }

  final List<String> _shipmentIds;
  @override
  List<String> get shipmentIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shipmentIds);
  }

  final List<String> _vendorIds;
  @override
  List<String> get vendorIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorIds);
  }

  final List<String> _itemIds;
  @override
  List<String> get itemIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemIds);
  }

  @override
  final String shipManagerId;
  final List<OrderItem> _items;
  @override
  List<OrderItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<OrderState> _states;
  @override
  List<OrderState> get states {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  final List<ProdType> _prodTypes;
  @override
  List<ProdType> get prodTypes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prodTypes);
  }

  final List<Map<String, dynamic>> _cancellations;
  @override
  List<Map<String, dynamic>> get cancellations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cancellations);
  }

  final List<PaidInfo> _paids;
  @override
  List<PaidInfo> get paids {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paids);
  }

  final List<OrderType> _orderTypes;
  @override
  List<OrderType> get orderTypes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderTypes);
  }

  @override
  final OrderAmount amount;

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

abstract class _GarmentOrder extends IoOrder {
  const factory _GarmentOrder(
      {final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? approvedAt,
      final DateTime? paidAt,
      final DateTime? doneAt,
      final DateTime? tossAt,
      required final String dbId,
      required final String shopId,
      required final int orderCnts,
      required final int activeCnts,
      required final int pendingCnts,
      required final List<String> orderIds,
      required final List<String> shipmentIds,
      required final List<String> vendorIds,
      required final List<String> itemIds,
      required final String shipManagerId,
      required final List<OrderItem> items,
      required final List<OrderState> states,
      required final List<ProdType> prodTypes,
      required final List<Map<String, dynamic>> cancellations,
      required final List<PaidInfo> paids,
      required final List<OrderType> orderTypes,
      required final OrderAmount amount}) = _$_GarmentOrder;
  const _GarmentOrder._() : super._();

  factory _GarmentOrder.fromJson(Map<String, dynamic> json) =
      _$_GarmentOrder.fromJson;

  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get approvedAt;
  @override
  DateTime? get paidAt;
  @override
  DateTime? get doneAt;
  @override
  DateTime? get tossAt;
  @override
  String get dbId;
  @override
  String get shopId;
  @override
  int get orderCnts;
  @override
  int get activeCnts;
  @override
  int get pendingCnts;
  @override
  List<String> get orderIds;
  @override
  List<String> get shipmentIds;
  @override
  List<String> get vendorIds;
  @override
  List<String> get itemIds;
  @override
  String get shipManagerId;
  @override
  List<OrderItem> get items;
  @override
  List<OrderState> get states;
  @override
  List<ProdType> get prodTypes;
  @override
  List<Map<String, dynamic>> get cancellations;
  @override
  List<PaidInfo> get paids;
  @override
  List<OrderType> get orderTypes;
  @override
  OrderAmount get amount;
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
  PaidInfo get paid => throw _privateConstructorUsedError;
  int get pureAmount => throw _privateConstructorUsedError; // 순수 상품금액
  int get orderAmount => throw _privateConstructorUsedError;
  int? get pickFeeAmount => throw _privateConstructorUsedError;
  int? get pickFeeDiscountAmount => throw _privateConstructorUsedError;
  bool get paymentConfirm => throw _privateConstructorUsedError;
  PayMethod? get paymentMethod => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;

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
      PaidInfo paid,
      int pureAmount,
      int orderAmount,
      int? pickFeeAmount,
      int? pickFeeDiscountAmount,
      bool paymentConfirm,
      PayMethod? paymentMethod,
      DateTime? paidAt});
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
    Object? paidAt = freezed,
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
              as PaidInfo,
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
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      PaidInfo paid,
      int pureAmount,
      int orderAmount,
      int? pickFeeAmount,
      int? pickFeeDiscountAmount,
      bool paymentConfirm,
      PayMethod? paymentMethod,
      DateTime? paidAt});
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
    Object? paidAt = freezed,
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
              as PaidInfo,
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
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      this.paymentMethod,
      this.paidAt})
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
  final PaidInfo paid;
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
  final DateTime? paidAt;

  @override
  String toString() {
    return 'OrderAmount(shipFeeAmount: $shipFeeAmount, shipFeeDiscountAmount: $shipFeeDiscountAmount, tax: $tax, paidAmount: $paidAmount, paid: $paid, pureAmount: $pureAmount, orderAmount: $orderAmount, pickFeeAmount: $pickFeeAmount, pickFeeDiscountAmount: $pickFeeDiscountAmount, paymentConfirm: $paymentConfirm, paymentMethod: $paymentMethod, paidAt: $paidAt)';
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
                other.paymentMethod == paymentMethod) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt));
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
      paymentMethod,
      paidAt);

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
      required final PaidInfo paid,
      required final int pureAmount,
      required final int orderAmount,
      required final int? pickFeeAmount,
      required final int? pickFeeDiscountAmount,
      required final bool paymentConfirm,
      final PayMethod? paymentMethod,
      final DateTime? paidAt}) = _$_OrderAmount;
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
  PaidInfo get paid;
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
  DateTime? get paidAt;
  @override
  @JsonKey(ignore: true)
  _$$_OrderAmountCopyWith<_$_OrderAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  String get id => throw _privateConstructorUsedError;
  List<String> get orderIds => throw _privateConstructorUsedError;
  String get vendorId => throw _privateConstructorUsedError;
  VendorGarment get vendorProd => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  String get orderDbId => throw _privateConstructorUsedError;
  String get shipmentId => throw _privateConstructorUsedError;
  String? get shipManagerId => throw _privateConstructorUsedError;
  int get orderCnt => throw _privateConstructorUsedError;
  int get activeCnt => throw _privateConstructorUsedError;
  int get pendingCnt => throw _privateConstructorUsedError;
  OrderAmount get amount => throw _privateConstructorUsedError;
  OrderState get state => throw _privateConstructorUsedError;
  OrderState? get beforeState => throw _privateConstructorUsedError;
  ProdType? get prodType => throw _privateConstructorUsedError;
  Map<String, dynamic>? get cancellation => throw _privateConstructorUsedError;
  OrderType? get orderType => throw _privateConstructorUsedError;
  String? get sizeUnit => throw _privateConstructorUsedError;
  String? get weightUnit => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {String id,
      List<String> orderIds,
      String vendorId,
      VendorGarment vendorProd,
      String shopId,
      String orderDbId,
      String shipmentId,
      String? shipManagerId,
      int orderCnt,
      int activeCnt,
      int pendingCnt,
      OrderAmount amount,
      OrderState state,
      OrderState? beforeState,
      ProdType? prodType,
      Map<String, dynamic>? cancellation,
      OrderType? orderType,
      String? sizeUnit,
      String? weightUnit,
      int? size,
      int? weight});

  $VendorGarmentCopyWith<$Res> get vendorProd;
  $OrderAmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderIds = null,
    Object? vendorId = null,
    Object? vendorProd = null,
    Object? shopId = null,
    Object? orderDbId = null,
    Object? shipmentId = null,
    Object? shipManagerId = freezed,
    Object? orderCnt = null,
    Object? activeCnt = null,
    Object? pendingCnt = null,
    Object? amount = null,
    Object? state = null,
    Object? beforeState = freezed,
    Object? prodType = freezed,
    Object? cancellation = freezed,
    Object? orderType = freezed,
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
      orderIds: null == orderIds
          ? _value.orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorProd: null == vendorProd
          ? _value.vendorProd
          : vendorProd // ignore: cast_nullable_to_non_nullable
              as VendorGarment,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDbId: null == orderDbId
          ? _value.orderDbId
          : orderDbId // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      shipManagerId: freezed == shipManagerId
          ? _value.shipManagerId
          : shipManagerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderState,
      beforeState: freezed == beforeState
          ? _value.beforeState
          : beforeState // ignore: cast_nullable_to_non_nullable
              as OrderState?,
      prodType: freezed == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as ProdType?,
      cancellation: freezed == cancellation
          ? _value.cancellation
          : cancellation // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType?,
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
  $VendorGarmentCopyWith<$Res> get vendorProd {
    return $VendorGarmentCopyWith<$Res>(_value.vendorProd, (value) {
      return _then(_value.copyWith(vendorProd: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderAmountCopyWith<$Res> get amount {
    return $OrderAmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$$_OrderItemCopyWith(
          _$_OrderItem value, $Res Function(_$_OrderItem) then) =
      __$$_OrderItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<String> orderIds,
      String vendorId,
      VendorGarment vendorProd,
      String shopId,
      String orderDbId,
      String shipmentId,
      String? shipManagerId,
      int orderCnt,
      int activeCnt,
      int pendingCnt,
      OrderAmount amount,
      OrderState state,
      OrderState? beforeState,
      ProdType? prodType,
      Map<String, dynamic>? cancellation,
      OrderType? orderType,
      String? sizeUnit,
      String? weightUnit,
      int? size,
      int? weight});

  @override
  $VendorGarmentCopyWith<$Res> get vendorProd;
  @override
  $OrderAmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$_OrderItemCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$_OrderItem>
    implements _$$_OrderItemCopyWith<$Res> {
  __$$_OrderItemCopyWithImpl(
      _$_OrderItem _value, $Res Function(_$_OrderItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderIds = null,
    Object? vendorId = null,
    Object? vendorProd = null,
    Object? shopId = null,
    Object? orderDbId = null,
    Object? shipmentId = null,
    Object? shipManagerId = freezed,
    Object? orderCnt = null,
    Object? activeCnt = null,
    Object? pendingCnt = null,
    Object? amount = null,
    Object? state = null,
    Object? beforeState = freezed,
    Object? prodType = freezed,
    Object? cancellation = freezed,
    Object? orderType = freezed,
    Object? sizeUnit = freezed,
    Object? weightUnit = freezed,
    Object? size = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$_OrderItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderIds: null == orderIds
          ? _value._orderIds
          : orderIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorProd: null == vendorProd
          ? _value.vendorProd
          : vendorProd // ignore: cast_nullable_to_non_nullable
              as VendorGarment,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDbId: null == orderDbId
          ? _value.orderDbId
          : orderDbId // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      shipManagerId: freezed == shipManagerId
          ? _value.shipManagerId
          : shipManagerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as OrderAmount,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as OrderState,
      beforeState: freezed == beforeState
          ? _value.beforeState
          : beforeState // ignore: cast_nullable_to_non_nullable
              as OrderState?,
      prodType: freezed == prodType
          ? _value.prodType
          : prodType // ignore: cast_nullable_to_non_nullable
              as ProdType?,
      cancellation: freezed == cancellation
          ? _value._cancellation
          : cancellation // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType?,
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
class _$_OrderItem extends _OrderItem {
  const _$_OrderItem(
      {required this.id,
      required final List<String> orderIds,
      required this.vendorId,
      required this.vendorProd,
      required this.shopId,
      required this.orderDbId,
      required this.shipmentId,
      required this.shipManagerId,
      required this.orderCnt,
      required this.activeCnt,
      required this.pendingCnt,
      required this.amount,
      required this.state,
      required this.beforeState,
      required this.prodType,
      final Map<String, dynamic>? cancellation,
      this.orderType = OrderType.standard,
      this.sizeUnit,
      this.weightUnit,
      this.size,
      this.weight})
      : _orderIds = orderIds,
        _cancellation = cancellation,
        super._();

  factory _$_OrderItem.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemFromJson(json);

  @override
  final String id;
  final List<String> _orderIds;
  @override
  List<String> get orderIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderIds);
  }

  @override
  final String vendorId;
  @override
  final VendorGarment vendorProd;
  @override
  final String shopId;
  @override
  final String orderDbId;
  @override
  final String shipmentId;
  @override
  final String? shipManagerId;
  @override
  final int orderCnt;
  @override
  final int activeCnt;
  @override
  final int pendingCnt;
  @override
  final OrderAmount amount;
  @override
  final OrderState state;
  @override
  final OrderState? beforeState;
  @override
  final ProdType? prodType;
  final Map<String, dynamic>? _cancellation;
  @override
  Map<String, dynamic>? get cancellation {
    final value = _cancellation;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final OrderType? orderType;
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
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
      __$$_OrderItemCopyWithImpl<_$_OrderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemToJson(
      this,
    );
  }
}

abstract class _OrderItem extends OrderItem {
  const factory _OrderItem(
      {required final String id,
      required final List<String> orderIds,
      required final String vendorId,
      required final VendorGarment vendorProd,
      required final String shopId,
      required final String orderDbId,
      required final String shipmentId,
      required final String? shipManagerId,
      required final int orderCnt,
      required final int activeCnt,
      required final int pendingCnt,
      required final OrderAmount amount,
      required final OrderState state,
      required final OrderState? beforeState,
      required final ProdType? prodType,
      final Map<String, dynamic>? cancellation,
      final OrderType? orderType,
      final String? sizeUnit,
      final String? weightUnit,
      final int? size,
      final int? weight}) = _$_OrderItem;
  const _OrderItem._() : super._();

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$_OrderItem.fromJson;

  @override
  String get id;
  @override
  List<String> get orderIds;
  @override
  String get vendorId;
  @override
  VendorGarment get vendorProd;
  @override
  String get shopId;
  @override
  String get orderDbId;
  @override
  String get shipmentId;
  @override
  String? get shipManagerId;
  @override
  int get orderCnt;
  @override
  int get activeCnt;
  @override
  int get pendingCnt;
  @override
  OrderAmount get amount;
  @override
  OrderState get state;
  @override
  OrderState? get beforeState;
  @override
  ProdType? get prodType;
  @override
  Map<String, dynamic>? get cancellation;
  @override
  OrderType? get orderType;
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
  _$$_OrderItemCopyWith<_$_OrderItem> get copyWith =>
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
  String get orderItemId => throw _privateConstructorUsedError;
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
      String orderItemId,
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
    Object? orderItemId = null,
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
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
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
      String orderItemId,
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
    Object? orderItemId = null,
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
      orderItemId: null == orderItemId
          ? _value.orderItemId
          : orderItemId // ignore: cast_nullable_to_non_nullable
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
      required this.orderItemId,
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
  final String orderItemId;
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
      required final String orderItemId,
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
  String get orderItemId;
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
