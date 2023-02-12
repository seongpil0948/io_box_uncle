import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:io_box_uncle/config/index.dart';
import 'package:io_box_uncle/util/common/index.dart';
import 'package:io_box_uncle/util/logger.dart';

part "repo.dart";
part 'model.freezed.dart';
part 'model.g.dart';

@freezed //  all of this class's properties are immutable.
class DataSource with _$DataSource {
  @JsonSerializable(explicitToJson: true)
  const factory DataSource({
    required String pushType,
    required String? targetPage,
    required String fromUserId,
    @Default("io-box") String application,
  }) = _DataSource;
  factory DataSource.fromJson(Map<String, Object?> json) =>
      _$DataSourceFromJson(json);
}

@freezed //  all of this class's properties are immutable.
class NotiSource with _$NotiSource {
  @JsonSerializable(explicitToJson: true)
  const factory NotiSource({
    required String title,
    required String body,
  }) = _NotiSource;
  factory NotiSource.fromJson(Map<String, Object?> json) =>
      _$NotiSourceFromJson(json);
}

@freezed //  all of this class's properties are immutable.
class PushSource with _$PushSource {
  @JsonSerializable(explicitToJson: true)
  const factory PushSource({
    required List<String> tokens,
    required List<String> userIds,
    required DataSource data,
    required NotiSource noti,
    required String? topic,
  }) = _PushSource;
  const PushSource._();
  factory PushSource.fromJson(Map<String, Object?> json) =>
      _$PushSourceFromJson(json);

  Map<String, dynamic> get bodyJson => {
        'tokens': tokens,
        'userIds': userIds,
        'data': data.toJson(),
        'notification': noti.toJson(),
        'topic': topic
      };
  @override
  String toString() =>
      "Push Msg Topic: $topic userIds: $userIds  tokens: $tokens, \n data: $data, \n noti: $noti";
}

@freezed //  all of this class's properties are immutable.
class FcmToken extends Equatable with _$FcmToken {
  @JsonSerializable(explicitToJson: true)
  factory FcmToken({
    @JsonKey(name: 'createdAt', fromJson: toDateTimeDefault, toJson: toTimeStamp)
        required DateTime createdAt,
    required String token,
  }) = _FcmToken;
  factory FcmToken.fromJson(Map<String, Object?> json) =>
      _$FcmTokenFromJson(json);
  const FcmToken._();
  @override
  List<Object?> get props => [token];
}
