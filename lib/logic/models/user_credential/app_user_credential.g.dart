// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUserCredential _$AppUserCredentialFromJson(Map<String, dynamic> json) =>
    _AppUserCredential(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] == null
          ? null
          : AccessToken.fromJson(json['accessToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppUserCredentialToJson(_AppUserCredential instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'accessToken': instance.accessToken?.toJson(),
    };
