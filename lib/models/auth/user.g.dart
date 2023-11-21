// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map json) => _$UserModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      hashPassword: json['hashPassword'] as String?,
      role: $enumDecodeNullable(_$UserRoleEnumEnumMap, json['role']),
      chatSessionIds: (json['chatSessionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'hashPassword': instance.hashPassword,
      'role': _$UserRoleEnumEnumMap[instance.role],
      'chatSessionIds': instance.chatSessionIds,
    };

const _$UserRoleEnumEnumMap = {
  UserRoleEnum.buyer: 'buyer',
  UserRoleEnum.seller: 'seller',
};
