// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_call_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatCallSessionModelImpl _$$ChatCallSessionModelImplFromJson(Map json) =>
    _$ChatCallSessionModelImpl(
      userCalling: json['userCalling'] == null
          ? null
          : UserModel.fromJson(
              Map<String, dynamic>.from(json['userCalling'] as Map)),
      isVideoCalling: json['isVideoCalling'] as bool? ?? false,
      isVoiceCalling: json['isVoiceCalling'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatCallSessionModelImplToJson(
        _$ChatCallSessionModelImpl instance) =>
    <String, dynamic>{
      'userCalling': instance.userCalling?.toJson(),
      'isVideoCalling': instance.isVideoCalling,
      'isVoiceCalling': instance.isVoiceCalling,
    };
