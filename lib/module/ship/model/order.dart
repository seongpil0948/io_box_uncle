part of "./index.dart";

@freezed //  all of this class's properties are immutable.
class GarmentOrder with _$GarmentOrder {
  const factory GarmentOrder(
      {required DateTime orderDate,
      DateTime? doneDate,
      required String dbId,
      required String shopId,
      required String shipManagerId,
      required List<String> orderIds,
      required List<String> itemIds,
      required List<String> subOrderIds,
      required List<String> vendorIds,
      required List<OrderState> states,
      required OrderAmount actualAmount,
      required OrderAmount initialAmount,
      required List<ProdOrder> items}) = _GarmentOrder;

  factory GarmentOrder.fromJson(Map<String, Object?> json) =>
      _$GarmentOrderFromJson(json);
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
  @JsonValue('BEFORE_SHIP')
  beforeShip,
  @JsonValue('SHIPPING')
  shipping,
  @JsonValue('SHIPPING_COMPLETE')
  shippingComplete,
  @JsonValue('TAKE_BACK')
  takeBack,
  @JsonValue('TAKE_BACK_DONE')
  takeBackDone,
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

@freezed //  all of this class's properties are immutable.
class OrderAmount with _$OrderAmount {
  const factory OrderAmount({
    required int shipFeeAmount,
    required int shipFeeDiscountAmount,
    required int tax,
    required int paidAmount,
    required BoolM paid,
    required int pureAmount,
    required int orderAmount,
    required bool paymentConfirm,
    PayMethod? paymentMethod,
  }) = _OrderAmount;

  factory OrderAmount.fromJson(Map<String, Object?> json) =>
      _$OrderAmountFromJson(json);
}

@freezed //  all of this class's properties are immutable.
class ProdOrder with _$ProdOrder {
  const factory ProdOrder({
    required String id,
    required String vendorId,
    required String vendorProdId,
    required String shopProdId,
    required String shipmentId,
    required int orderCnt,
    required int activeCnt,
    required int pendingCnt,
    required OrderAmount actualAmount,
    required OrderAmount initialAmount,
    required OrderState state,
  }) = _ProdOrder;

  factory ProdOrder.fromJson(Map<String, Object?> json) =>
      _$ProdOrderFromJson(json);
}
