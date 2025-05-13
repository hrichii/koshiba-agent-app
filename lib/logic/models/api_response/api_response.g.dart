// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseOk<S> _$ApiResponseOkFromJson<S>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
) =>
    ApiResponseOk<S>(
      data: fromJsonS(json['data']),
      messageCode:
          AppMessageCode.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseOkToJson<S>(
  ApiResponseOk<S> instance,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'data': toJsonS(instance.data),
      'meta': instance.messageCode.toJson(),
      'runtimeType': instance.$type,
    };

ApiResponseNg<S> _$ApiResponseNgFromJson<S>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
) =>
    ApiResponseNg<S>(
      messageCode:
          AppMessageCode.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseNgToJson<S>(
  ApiResponseNg<S> instance,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'meta': instance.messageCode.toJson(),
      'runtimeType': instance.$type,
    };
