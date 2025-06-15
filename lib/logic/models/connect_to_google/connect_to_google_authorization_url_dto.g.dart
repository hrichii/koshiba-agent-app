// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect_to_google_authorization_url_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConnectToGoogleAuthorizationUrlDto
_$ConnectToGoogleAuthorizationUrlDtoFromJson(Map<String, dynamic> json) =>
    _ConnectToGoogleAuthorizationUrlDto(
      authorizationUri: Uri.parse(json['authorization_url'] as String),
    );

Map<String, dynamic> _$ConnectToGoogleAuthorizationUrlDtoToJson(
  _ConnectToGoogleAuthorizationUrlDto instance,
) => <String, dynamic>{
  'authorization_url': instance.authorizationUri.toString(),
};
