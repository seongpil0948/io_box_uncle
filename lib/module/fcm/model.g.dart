// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataSource _$$_DataSourceFromJson(Map<String, dynamic> json) =>
    _$_DataSource(
      pushType: json['pushType'] as String,
      targetPage: json['targetPage'] as String?,
      fromUserId: json['fromUserId'] as String,
      application: json['application'] as String? ?? "io-box",
    );

Map<String, dynamic> _$$_DataSourceToJson(_$_DataSource instance) =>
    <String, dynamic>{
      'pushType': instance.pushType,
      'targetPage': instance.targetPage,
      'fromUserId': instance.fromUserId,
      'application': instance.application,
    };

_$_NotiSource _$$_NotiSourceFromJson(Map<String, dynamic> json) =>
    _$_NotiSource(
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_NotiSourceToJson(_$_NotiSource instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };

_$_PushSource _$$_PushSourceFromJson(Map<String, dynamic> json) =>
    _$_PushSource(
      tokens:
          (json['tokens'] as List<dynamic>).map((e) => e as String).toList(),
      userIds:
          (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
      data: DataSource.fromJson(json['data'] as Map<String, dynamic>),
      noti: NotiSource.fromJson(json['noti'] as Map<String, dynamic>),
      topic: json['topic'] as String?,
    );

Map<String, dynamic> _$$_PushSourceToJson(_$_PushSource instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
      'userIds': instance.userIds,
      'data': instance.data.toJson(),
      'noti': instance.noti.toJson(),
      'topic': instance.topic,
    };

_$_FcmToken _$$_FcmTokenFromJson(Map<String, dynamic> json) => _$_FcmToken(
      createdAt: DateTime.parse(json['createdAt'] as String),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_FcmTokenToJson(_$_FcmToken instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'token': instance.token,
    };
