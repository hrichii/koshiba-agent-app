// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_create_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountCreateDto _$AccountCreateDtoFromJson(Map<String, dynamic> json) =>
    _AccountCreateDto(
      uid: json['uid'] as String,
      email: json['email'] as String,
      name: json['name'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$AccountCreateDtoToJson(_AccountCreateDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
    };
