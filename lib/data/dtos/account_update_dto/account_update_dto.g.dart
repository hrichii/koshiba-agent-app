// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_update_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountUpdateDto _$AccountUpdateDtoFromJson(Map<String, dynamic> json) =>
    _AccountUpdateDto(
      uid: json['uid'] as String,
      email: json['email'] as String?,
      name: json['name'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$AccountUpdateDtoToJson(_AccountUpdateDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
    };
