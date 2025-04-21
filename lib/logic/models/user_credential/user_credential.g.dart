// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserCredential _$UserCredentialFromJson(Map<String, dynamic> json) =>
    _UserCredential(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] == null
          ? null
          : AccessToken.fromJson(json['accessToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCredentialToJson(_UserCredential instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
    };
