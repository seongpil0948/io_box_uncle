// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IoPay _$$_IoPayFromJson(Map<String, dynamic> json) => _$_IoPay(
      userId: json['userId'] as String,
      budget: json['budget'] as int,
      pendingBudget: json['pendingBudget'] as int,
      createdAt: toDateTime(json['createdAt']),
      updatedAt: toDateTime(json['updatedAt']),
    );

Map<String, dynamic> _$$_IoPayToJson(_$_IoPay instance) => <String, dynamic>{
      'userId': instance.userId,
      'budget': instance.budget,
      'pendingBudget': instance.pendingBudget,
      'createdAt': toTimeStamp(instance.createdAt),
      'updatedAt': toTimeStamp(instance.updatedAt),
    };

_$_PayHistory _$$_PayHistoryFromJson(Map<String, dynamic> json) =>
    _$_PayHistory(
      userId: json['userId'] as String,
      budget: json['budget'] as int,
      pendingBudget: json['pendingBudget'] as int,
      state: $enumDecode(_$PayHistStateEnumMap, json['state']),
      tbd: json['tbd'] as Map<String, dynamic>,
      createdAt: toDateTime(json['createdAt']),
    );

Map<String, dynamic> _$$_PayHistoryToJson(_$_PayHistory instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'budget': instance.budget,
      'pendingBudget': instance.pendingBudget,
      'state': _$PayHistStateEnumMap[instance.state]!,
      'tbd': instance.tbd,
      'createdAt': toTimeStamp(instance.createdAt),
    };

const _$PayHistStateEnumMap = {
  PayHistState.charge: 'CHARGE',
  PayHistState.withDraw: 'WITH_DRAW',
  PayHistState.adminModify: 'ADMIN_MODIFY',
  PayHistState.returnPickupAmount: 'RETURN_PICKUP_AMOUNT',
  PayHistState.approvePickup: 'APPROVE_PICKUP',
  PayHistState.approvePickupFee: 'APPROVE_PICKUP_FEE',
  PayHistState.orderGarment: 'ORDER_GARMENT',
  PayHistState.orderGarmentFee: 'ORDER_GARMENT_FEE',
  PayHistState.orderApprove: 'ORDER_APPROVE',
  PayHistState.orderApproveFee: 'ORDER_APPROVE_FEE',
  PayHistState.orderReject: 'ORDER_REJECT',
  PayHistState.requestPickup: 'REQUEST_PICKUP',
  PayHistState.orderDone: 'ORDER_DONE',
};
