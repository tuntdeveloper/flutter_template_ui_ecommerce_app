// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatSessionModelImpl _$$ChatSessionModelImplFromJson(Map json) =>
    _$ChatSessionModelImpl(
      id: json['id'] as String?,
      chatUserIds: (json['chatUserIds'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const <String?>[],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$ChatSessionModelImplToJson(
        _$ChatSessionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatUserIds': instance.chatUserIds,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'title': instance.title,
    };
