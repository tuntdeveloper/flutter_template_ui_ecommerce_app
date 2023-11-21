// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map json) => _$MessageModelImpl(
      id: json['id'] as String?,
      chatSessionId: json['chatSessionId'] as String?,
      sentByUserId: json['sentByUserId'] as String?,
      sentByUser: json['sentByUser'] as bool? ?? false,
      message: json['message'] as String?,
      isTyping: json['isTyping'] as bool? ?? false,
      isRead: json['isRead'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatSessionId': instance.chatSessionId,
      'sentByUserId': instance.sentByUserId,
      'sentByUser': instance.sentByUser,
      'message': instance.message,
      'isTyping': instance.isTyping,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
