part of "./index.dart";

@freezed //  all of this class's properties are immutable.
class IoOrder extends Equatable with _$IoOrder {
  @JsonSerializable(explicitToJson: true)
  const factory IoOrder({
    @JsonKey(name: 'od', fromJson: dateMapFromJson, toJson: dateMapToJson)
    @Default({})
        Map<String, DateTime?> od, // order date, dart not support key of type
    bool? isDone,
    bool? isDirectToShip,
    required String dbId,
    required String shopId,
    required int orderCnts,
    required int activeCnts,
    required int pendingCnts,
    required List<String> orderIds,
    required List<String> shipmentIds,
    required List<String> vendorIds,
    required List<String> itemIds,
    String? shipManagerId,
    required List<OrderItem> items,
    required List<OrderState> states,
    required List<Map<String, dynamic>> cancellations,
    required List<ProdType> prodTypes,
    required List<PaidInfo> paids,
    required List<OrderType> orderTypes,
    required PayAmount? prodAmount,
    required PayAmount? shipAmount,
    required PayAmount? pickAmount,
  }) = _IoOrder;

  const IoOrder._();

  IoOrder setState(String orderItemId, OrderState before, OrderState after) {
    var item = items.firstWhere((element) => element.id == orderItemId);
    assert(item.state == before && states.contains(before));

    var state = _$OrderStateEnumMap[after]!;
    Map<String, DateTime?> orderOd = Map.from(od);
    orderOd[state] = DateTime.now();
    Map<String, DateTime?> itemOd = Map.from(item.od);
    itemOd[state] = DateTime.now();

    final newItem = item.copyWith(state: after, beforeState: before, od: od);
    final newItems = [newItem, ...items.where((e) => e != newItem)];
    return copyWith(
        states: newItems.map((e) => e.state).toSet().toList(),
        items: newItems,
        od: orderOd);
  }

  factory IoOrder.fromJson(Map<String, Object?> json) =>
      _$IoOrderFromJson(json);

  @override
  List<Object?> get props => [dbId];
}

enum PaidInfo {
  @JsonValue('OVERCOME')
  overcome,
  @JsonValue('CREDIT')
  credit,
  @JsonValue('EXACT')
  exact,
  @JsonValue('NO')
  no,
}

enum ProdType {
  @JsonValue('GARMENT')
  garment,
  @JsonValue('GROCERY')
  grocery,
}

enum BoolM {
  @JsonValue('T')
  t,
  @JsonValue('F')
  f,
  @JsonValue('M')
  m
}

enum PayMethod {
  @JsonValue('CASH')
  cash,
  @JsonValue('NO_BANKBOOK')
  noBankbook,
  @JsonValue('CARD')
  card,
}

enum OrderState {
  @JsonValue('BEFORE_ORDER')
  beforeOrder,
  @JsonValue('BEFORE_APPROVE')
  beforeApprove,
  @JsonValue('BEFORE_PAYMENT')
  beforePayment,
  @JsonValue('BEFORE_READY')
  beforeReady,
  @JsonValue('BEFORE_PICKUP_REQ')
  beforePickupReq,
  @JsonValue('BEFORE_APPROVE_PICKUP')
  beforeApprovePickup,
  @JsonValue('BEFORE_ASSIGN_PICKUP')
  beforeAssignPickup,
  @JsonValue('BEFORE_PICKUP')
  beforePickup,
  @JsonValue('ONGOING_PICKUP')
  ongoingPickup,
  @JsonValue('PICKUP_COMPLETE')
  pickupComplete,
  @JsonValue('BEFORE_SHIP')
  beforeShip,
  @JsonValue('SHIPPING')
  shipping,
  @JsonValue('SHIPPING_COMPLETE')
  shippingComplete,
  @JsonValue('RETURN_REQ')
  returnReq,
  @JsonValue('RETURN_APPROVED')
  returnApproved,
  @JsonValue('RETURN_DONE')
  returnBackDone,
  @JsonValue('REFUND')
  refund,
  @JsonValue('REFUND_DONE')
  refundDone,
  @JsonValue('CHANGE')
  change,
  @JsonValue('CHANGE_DONE')
  changeDone,
  @JsonValue('CANCEL')
  cancel,
  @JsonValue('CANCEL_DONE')
  cancelDone,
  @JsonValue('ORDER_DONE')
  orderDone,
}

extension OrderExtension on OrderState {
  String get toKoString {
    switch (this) {
      case OrderState.beforeOrder:
        return "주문전";
      case OrderState.beforeApprove:
        return "주문승인전";
      case OrderState.beforePayment:
        return "결제전";
      case OrderState.beforeReady:
        return "물품준비전";
      case OrderState.beforePickupReq:
        return "픽업요청전";
      case OrderState.beforeApprovePickup:
        return "픽업승인전";
      case OrderState.beforeAssignPickup:
        return "픽업할당전";
      case OrderState.beforePickup:
        return "픽업전";
      case OrderState.pickupComplete:
        return "픽업완료";
      case OrderState.beforeShip:
        return "배송전";
      case OrderState.shipping:
        return "배송중";
      case OrderState.shippingComplete:
        return "배송완료";
      case OrderState.returnReq:
        return "반품요청중";
      case OrderState.returnApproved:
        return "반품승인";
      case OrderState.returnBackDone:
        return "반품완료";
      case OrderState.refund:
        return "환불중";
      case OrderState.refundDone:
        return "환불완료";
      case OrderState.change:
        return "교환중";
      case OrderState.changeDone:
        return "교환완료";
      case OrderState.cancel:
        return "취소중";
      case OrderState.cancelDone:
        return "취소완료";
      case OrderState.orderDone:
        return "거래완료";
      default:
        throw ArgumentError("not Matched $this");
    }
  }
}

@freezed //  all of this class's properties are immutable.
class PayAmount with _$PayAmount {
  @JsonSerializable(explicitToJson: true)
  const factory PayAmount({
    required int tax,
    required int paidAmount,
    required PaidInfo paid,
    required int pureAmount, // 순수 상품금액
    required int amount,
    required bool paymentConfirm,
    PayMethod? paymentMethod,
    @JsonKey(name: 'paidAt', fromJson: toDateTime, toJson: toTimeStamp)
        DateTime? paidAt,
    required int discountAmount,
    required int pendingAmount,
    required bool isPending,
  }) = _PayAmount;

  PayAmount defrayPending(int amount) {
    // pure amount 는 채워져 있어야 한다.
    final remain = pendingAmount - amount;
    assert(pendingAmount == 0 || isPending && remain >= 0);
    return copyWith(pendingAmount: remain, isPending: remain > 0);
  }

  const PayAmount._();

  factory PayAmount.fromJson(Map<String, Object?> json) =>
      _$PayAmountFromJson(json);
}

enum OrderType {
  @JsonValue('STANDARD')
  standard,
  @JsonValue('RETURN')
  orderReturn,
}

@freezed //  all of this class's properties are immutable.
class OrderItem extends Equatable with _$OrderItem {
  @JsonSerializable(explicitToJson: true)
  const factory OrderItem({
    @JsonKey(name: 'od', fromJson: dateMapFromJson, toJson: dateMapToJson)
    @Default({})
        Map<String, DateTime?> od, // order date, dart not support key of type
    required String id,
    required List<String> orderIds,
    required String vendorId,
    required String shopId,
    required VendorGarment vendorProd,
    required ShopGarment shopProd,
    required int orderCnt,
    required int activeCnt,
    required int pendingCnt,
    required OrderState state,
    required OrderState? beforeState,
    required String shipmentId,
    required String orderDbId,
    @Default(OrderType.standard) OrderType? orderType,
    required ProdType? prodType,
    required PayAmount? prodAmount,
    Map<String, dynamic>? cancellation,
    required String? shipManagerId,
    // # DEPRECATED
    // String? sizeUnit,
    // String? weightUnit,
    // int? size,
    // int? weight,
  }) = _OrderItem;

  bool get isPickup => [
        OrderState.beforePickup,
        OrderState.ongoingPickup,
        OrderState.pickupComplete
      ].contains(state);
  bool get isShip => [
        OrderState.beforeShip,
        OrderState.shipping,
        OrderState.shippingComplete,
      ].contains(state);

  bool get isReturn => orderType == OrderType.orderReturn;

  factory OrderItem.fromJson(Map<String, Object?> json) =>
      _$OrderItemFromJson(json);
  const OrderItem._();

  @override
  List<Object?> get props => [id];
}
