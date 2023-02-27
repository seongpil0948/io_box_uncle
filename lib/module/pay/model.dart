import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:io_box_uncle/util/common/index.dart';
import 'package:io_box_uncle/util/fb/index.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed //  all of this class's properties are immutable.
class IoPay with _$IoPay {
  @JsonSerializable(explicitToJson: true)
  const factory IoPay({
    required String userId,
    required int budget,
    required int pendingBudget,
    @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
        DateTime? createdAt,
    @JsonKey(name: 'updatedAt', fromJson: toDateTime, toJson: toTimeStamp)
        DateTime? updatedAt,
  }) = _IoPay;
  // ignore: unused_element
  const IoPay._();
  factory IoPay.fromJson(Map<String, Object?> json) => _$IoPayFromJson(json);

  Future<void> updateIoPay(PayHistState histState, int newBudget,
      int newPendingBudget, Map<String, dynamic>? tbd) async {
    final hist = PayHistory(
        userId: userId,
        budget: newBudget,
        pendingBudget: newPendingBudget,
        state: histState,
        tbd: tbd ?? {});
    await getCollection(c: IoCollection.ioPay).doc(userId).update({
      "budget": budget + newBudget,
      "pendingBudget": pendingBudget + newPendingBudget,
      "updatedAt": DateTime.now(),
    });
    await getCollection(c: IoCollection.payHistory, userId: userId)
        .doc()
        .set(hist);
  }
}

Future<IoPay?> getIoPay(String uid) async {
  final docRef = await getCollection(c: IoCollection.order).doc(uid).get();
  return IoPay.fromJson(docRef.data() as Map<String, Object?>);
}

@freezed //  all of this class's properties are immutable.
class PayHistory with _$PayHistory {
  @JsonSerializable(explicitToJson: true)
  const factory PayHistory({
    required String userId,
    required int budget,
    required int pendingBudget,
    required PayHistState state,
    required Map<String, dynamic> tbd,
    @JsonKey(name: 'createdAt', fromJson: toDateTime, toJson: toTimeStamp)
        DateTime? createdAt,
  }) = _PayHistory;

  factory PayHistory.fromJson(Map<String, Object?> json) =>
      _$PayHistoryFromJson(json);
}

enum PayHistState {
  @JsonValue('CHARGE')
  charge,
  @JsonValue('WITH_DRAW')
  withDraw,
  @JsonValue('ADMIN_MODIFY')
  adminModify,
  @JsonValue('RETURN_PICKUP_AMOUNT')
  returnPickupAmount,
  @JsonValue('APPROVE_PICKUP')
  approvePickup,
  @JsonValue('APPROVE_PICKUP_FEE')
  approvePickupFee,
  @JsonValue('ORDER_GARMENT')
  orderGarment,
  @JsonValue('ORDER_GARMENT_FEE')
  orderGarmentFee,
  @JsonValue('ORDER_APPROVE')
  orderApprove,
  @JsonValue('ORDER_APPROVE_FEE')
  orderApproveFee,
  @JsonValue('ORDER_REJECT')
  orderReject,
  @JsonValue('REQUEST_PICKUP')
  requestPickup,
  @JsonValue('ORDER_DONE')
  orderDone
}
