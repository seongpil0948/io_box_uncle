// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipOrder _$$_ShipOrderFromJson(Map<String, dynamic> json) => _$_ShipOrder(
      shipment: Shipment.fromJson(json['shipment'] as Map<String, dynamic>),
      garmentOrder:
          IoOrder.fromJson(json['garmentOrder'] as Map<String, dynamic>),
      order: OrderItem.fromJson(json['order'] as Map<String, dynamic>),
      shopUser: IoUser.fromJson(json['shopUser'] as Map<String, dynamic>),
      vendorUser: IoUser.fromJson(json['vendorUser'] as Map<String, dynamic>),
      managerUser: IoUser.fromJson(json['managerUser'] as Map<String, dynamic>),
      vendorGarment:
          VendorGarment.fromJson(json['vendorGarment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShipOrderToJson(_$_ShipOrder instance) =>
    <String, dynamic>{
      'shipment': instance.shipment.toJson(),
      'garmentOrder': instance.garmentOrder.toJson(),
      'order': instance.order.toJson(),
      'shopUser': instance.shopUser.toJson(),
      'vendorUser': instance.vendorUser.toJson(),
      'managerUser': instance.managerUser.toJson(),
      'vendorGarment': instance.vendorGarment.toJson(),
    };

_$_GarmentOrder _$$_GarmentOrderFromJson(Map<String, dynamic> json) =>
    _$_GarmentOrder(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      approvedAt: json['approvedAt'] == null
          ? null
          : DateTime.parse(json['approvedAt'] as String),
      paidAt: json['paidAt'] == null
          ? null
          : DateTime.parse(json['paidAt'] as String),
      doneAt: json['doneAt'] == null
          ? null
          : DateTime.parse(json['doneAt'] as String),
      tossAt: json['tossAt'] == null
          ? null
          : DateTime.parse(json['tossAt'] as String),
      isDone: json['isDone'] as bool?,
      isDirectToShip: json['isDirectToShip'] as bool?,
      dbId: json['dbId'] as String,
      shopId: json['shopId'] as String,
      orderCnts: json['orderCnts'] as int,
      activeCnts: json['activeCnts'] as int,
      pendingCnts: json['pendingCnts'] as int,
      orderIds:
          (json['orderIds'] as List<dynamic>).map((e) => e as String).toList(),
      shipmentIds: (json['shipmentIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      vendorIds:
          (json['vendorIds'] as List<dynamic>).map((e) => e as String).toList(),
      itemIds:
          (json['itemIds'] as List<dynamic>).map((e) => e as String).toList(),
      shipManagerId: json['shipManagerId'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      states: (json['states'] as List<dynamic>)
          .map((e) => $enumDecode(_$OrderStateEnumMap, e))
          .toList(),
      cancellations: (json['cancellations'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      prodTypes: (json['prodTypes'] as List<dynamic>)
          .map((e) => $enumDecode(_$ProdTypeEnumMap, e))
          .toList(),
      paids: (json['paids'] as List<dynamic>)
          .map((e) => $enumDecode(_$PaidInfoEnumMap, e))
          .toList(),
      orderTypes: (json['orderTypes'] as List<dynamic>)
          .map((e) => $enumDecode(_$OrderTypeEnumMap, e))
          .toList(),
      prodAmount:
          PayAmount.fromJson(json['prodAmount'] as Map<String, dynamic>),
      shipAmount:
          PayAmount.fromJson(json['shipAmount'] as Map<String, dynamic>),
      pickAmount:
          PayAmount.fromJson(json['pickAmount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GarmentOrderToJson(_$_GarmentOrder instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'paidAt': instance.paidAt?.toIso8601String(),
      'doneAt': instance.doneAt?.toIso8601String(),
      'tossAt': instance.tossAt?.toIso8601String(),
      'isDone': instance.isDone,
      'isDirectToShip': instance.isDirectToShip,
      'dbId': instance.dbId,
      'shopId': instance.shopId,
      'orderCnts': instance.orderCnts,
      'activeCnts': instance.activeCnts,
      'pendingCnts': instance.pendingCnts,
      'orderIds': instance.orderIds,
      'shipmentIds': instance.shipmentIds,
      'vendorIds': instance.vendorIds,
      'itemIds': instance.itemIds,
      'shipManagerId': instance.shipManagerId,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'states': instance.states.map((e) => _$OrderStateEnumMap[e]!).toList(),
      'cancellations': instance.cancellations,
      'prodTypes':
          instance.prodTypes.map((e) => _$ProdTypeEnumMap[e]!).toList(),
      'paids': instance.paids.map((e) => _$PaidInfoEnumMap[e]!).toList(),
      'orderTypes':
          instance.orderTypes.map((e) => _$OrderTypeEnumMap[e]!).toList(),
      'prodAmount': instance.prodAmount.toJson(),
      'shipAmount': instance.shipAmount.toJson(),
      'pickAmount': instance.pickAmount.toJson(),
    };

const _$OrderStateEnumMap = {
  OrderState.beforeOrder: 'BEFORE_ORDER',
  OrderState.beforeApprove: 'BEFORE_APPROVE',
  OrderState.beforePayment: 'BEFORE_PAYMENT',
  OrderState.beforeReady: 'BEFORE_READY',
  OrderState.beforePickupReq: 'BEFORE_PICKUP_REQ',
  OrderState.beforeApprovePickup: 'BEFORE_APPROVE_PICKUP',
  OrderState.beforeAssignPickup: 'BEFORE_ASSIGN_PICKUP',
  OrderState.beforePickup: 'BEFORE_PICKUP',
  OrderState.ongoingPickup: 'ONGOING_PICKUP',
  OrderState.pickupComplete: 'PICKUP_COMPLETE',
  OrderState.beforeShip: 'BEFORE_SHIP',
  OrderState.shipping: 'SHIPPING',
  OrderState.shippingComplete: 'SHIPPING_COMPLETE',
  OrderState.returnReq: 'RETURN_REQ',
  OrderState.returnApproved: 'RETURN_APPROVED',
  OrderState.returnBackDone: 'RETURN_DONE',
  OrderState.refund: 'REFUND',
  OrderState.refundDone: 'REFUND_DONE',
  OrderState.change: 'CHANGE',
  OrderState.changeDone: 'CHANGE_DONE',
  OrderState.cancel: 'CANCEL',
  OrderState.cancelDone: 'CANCEL_DONE',
  OrderState.orderDone: 'ORDER_DONE',
};

const _$ProdTypeEnumMap = {
  ProdType.garment: 'GARMENT',
  ProdType.grocery: 'GROCERY',
};

const _$PaidInfoEnumMap = {
  PaidInfo.overcome: 'OVERCOME',
  PaidInfo.credit: 'CREDIT',
  PaidInfo.exact: 'EXACT',
  PaidInfo.no: 'NO',
};

const _$OrderTypeEnumMap = {
  OrderType.standard: 'STANDARD',
  OrderType.orderReturn: 'RETURN',
};

_$_PayAmount _$$_PayAmountFromJson(Map<String, dynamic> json) => _$_PayAmount(
      shipFeeAmount: json['shipFeeAmount'] as int,
      shipFeeDiscountAmount: json['shipFeeDiscountAmount'] as int,
      tax: json['tax'] as int,
      paidAmount: json['paidAmount'] as int,
      paid: $enumDecode(_$PaidInfoEnumMap, json['paid']),
      pureAmount: json['pureAmount'] as int,
      orderAmount: json['orderAmount'] as int,
      pickFeeAmount: json['pickFeeAmount'] as int?,
      pickFeeDiscountAmount: json['pickFeeDiscountAmount'] as int?,
      paymentConfirm: json['paymentConfirm'] as bool,
      paymentMethod:
          $enumDecodeNullable(_$PayMethodEnumMap, json['paymentMethod']),
      paidAt: json['paidAt'] == null
          ? null
          : DateTime.parse(json['paidAt'] as String),
    );

Map<String, dynamic> _$$_PayAmountToJson(_$_PayAmount instance) =>
    <String, dynamic>{
      'shipFeeAmount': instance.shipFeeAmount,
      'shipFeeDiscountAmount': instance.shipFeeDiscountAmount,
      'tax': instance.tax,
      'paidAmount': instance.paidAmount,
      'paid': _$PaidInfoEnumMap[instance.paid]!,
      'pureAmount': instance.pureAmount,
      'orderAmount': instance.orderAmount,
      'pickFeeAmount': instance.pickFeeAmount,
      'pickFeeDiscountAmount': instance.pickFeeDiscountAmount,
      'paymentConfirm': instance.paymentConfirm,
      'paymentMethod': _$PayMethodEnumMap[instance.paymentMethod],
      'paidAt': instance.paidAt?.toIso8601String(),
    };

const _$PayMethodEnumMap = {
  PayMethod.cash: 'CASH',
  PayMethod.noBankbook: 'NO_BANKBOOK',
  PayMethod.card: 'CARD',
};

_$_OrderItem _$$_OrderItemFromJson(Map<String, dynamic> json) => _$_OrderItem(
      id: json['id'] as String,
      orderIds:
          (json['orderIds'] as List<dynamic>).map((e) => e as String).toList(),
      vendorId: json['vendorId'] as String,
      shopId: json['shopId'] as String,
      vendorProd:
          VendorGarment.fromJson(json['vendorProd'] as Map<String, dynamic>),
      shopProd: ShopGarment.fromJson(json['shopProd'] as Map<String, dynamic>),
      orderCnt: json['orderCnt'] as int,
      activeCnt: json['activeCnt'] as int,
      pendingCnt: json['pendingCnt'] as int,
      state: $enumDecode(_$OrderStateEnumMap, json['state']),
      beforeState:
          $enumDecodeNullable(_$OrderStateEnumMap, json['beforeState']),
      shipmentId: json['shipmentId'] as String,
      orderDbId: json['orderDbId'] as String,
      orderType: $enumDecodeNullable(_$OrderTypeEnumMap, json['orderType']) ??
          OrderType.standard,
      prodType: $enumDecodeNullable(_$ProdTypeEnumMap, json['prodType']),
      prodAmount:
          PayAmount.fromJson(json['prodAmount'] as Map<String, dynamic>),
      cancellation: json['cancellation'] as Map<String, dynamic>?,
      shipManagerId: json['shipManagerId'] as String?,
    );

Map<String, dynamic> _$$_OrderItemToJson(_$_OrderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderIds': instance.orderIds,
      'vendorId': instance.vendorId,
      'shopId': instance.shopId,
      'vendorProd': instance.vendorProd.toJson(),
      'shopProd': instance.shopProd.toJson(),
      'orderCnt': instance.orderCnt,
      'activeCnt': instance.activeCnt,
      'pendingCnt': instance.pendingCnt,
      'state': _$OrderStateEnumMap[instance.state]!,
      'beforeState': _$OrderStateEnumMap[instance.beforeState],
      'shipmentId': instance.shipmentId,
      'orderDbId': instance.orderDbId,
      'orderType': _$OrderTypeEnumMap[instance.orderType],
      'prodType': _$ProdTypeEnumMap[instance.prodType],
      'prodAmount': instance.prodAmount.toJson(),
      'cancellation': instance.cancellation,
      'shipManagerId': instance.shipManagerId,
    };

_$_Shipment _$$_ShipmentFromJson(Map<String, dynamic> json) => _$_Shipment(
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      shippingId: json['shippingId'] as String,
      orderDbId: json['orderDbId'] as String,
      uncleId: json['uncleId'] as String?,
      orderItemId: json['orderItemId'] as String,
      trackingNo: json['trackingNo'] as String?,
      shipMethod: $enumDecode(_$ShipMethodEnumMap, json['shipMethod']),
      additionalInfo: json['additionalInfo'] as String,
      paid: json['paid'] as bool,
      weightUnit: json['weightUnit'] as String?,
      weight: json['weight'] as int?,
      sizeUnit: json['sizeUnit'] as String?,
      size: json['size'] as int?,
      amountBySize: json['amountBySize'] as int?,
      amountByWeight: json['amountByWeight'] as int?,
      shipFeeBasic: json['shipFeeBasic'] as int,
      pickupFeeBasic: json['pickupFeeBasic'] as int,
      returnAddress:
          Locate.fromJson(json['returnAddress'] as Map<String, dynamic>),
      startAddress:
          Locate.fromJson(json['startAddress'] as Map<String, dynamic>),
      receiveAddress:
          Locate.fromJson(json['receiveAddress'] as Map<String, dynamic>),
      wishedDeliveryTime: json['wishedDeliveryTime'] == null
          ? null
          : DateTime.parse(json['wishedDeliveryTime'] as String),
      managerId: json['managerId'] as String,
    );

Map<String, dynamic> _$$_ShipmentToJson(_$_Shipment instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'shippingId': instance.shippingId,
      'orderDbId': instance.orderDbId,
      'uncleId': instance.uncleId,
      'orderItemId': instance.orderItemId,
      'trackingNo': instance.trackingNo,
      'shipMethod': _$ShipMethodEnumMap[instance.shipMethod]!,
      'additionalInfo': instance.additionalInfo,
      'paid': instance.paid,
      'weightUnit': instance.weightUnit,
      'weight': instance.weight,
      'sizeUnit': instance.sizeUnit,
      'size': instance.size,
      'amountBySize': instance.amountBySize,
      'amountByWeight': instance.amountByWeight,
      'shipFeeBasic': instance.shipFeeBasic,
      'pickupFeeBasic': instance.pickupFeeBasic,
      'returnAddress': instance.returnAddress.toJson(),
      'startAddress': instance.startAddress.toJson(),
      'receiveAddress': instance.receiveAddress.toJson(),
      'wishedDeliveryTime': instance.wishedDeliveryTime?.toIso8601String(),
      'managerId': instance.managerId,
    };

const _$ShipMethodEnumMap = {
  ShipMethod.uncle: 'UNCLE',
  ShipMethod.ship: 'SHIP',
};

_$_Locate _$$_LocateFromJson(Map<String, dynamic> json) => _$_Locate(
      code: json['code'] as String?,
      alias: json['alias'] as String,
      latitude: json['latitude'] as int?,
      longitude: json['longitude'] as int?,
      detailLocate: json['detailLocate'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      postalCode: json['postalCode'] as String?,
      country: json['country'] as String,
      city: json['city'] as String?,
      county: json['county'] as String?,
      town: json['town'] as String?,
      locateType: $enumDecodeNullable(_$LocateTypeEnumMap, json['locateType']),
    );

Map<String, dynamic> _$$_LocateToJson(_$_Locate instance) => <String, dynamic>{
      'code': instance.code,
      'alias': instance.alias,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'detailLocate': instance.detailLocate,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'city': instance.city,
      'county': instance.county,
      'town': instance.town,
      'locateType': _$LocateTypeEnumMap[instance.locateType],
    };

const _$LocateTypeEnumMap = {
  LocateType.shop: 'SHOP',
  LocateType.storage: 'STORAGE',
  LocateType.etc: 'ETC',
};
