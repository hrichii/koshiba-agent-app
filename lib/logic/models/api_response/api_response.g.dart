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
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseOkToJson<S>(
  ApiResponseOk<S> instance,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'data': toJsonS(instance.data),
      'meta': instance.meta.toJson(),
      'runtimeType': instance.$type,
    };

ApiResponseNg<S> _$ApiResponseNgFromJson<S>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
) =>
    ApiResponseNg<S>(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseNgToJson<S>(
  ApiResponseNg<S> instance,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'meta': instance.meta.toJson(),
      'runtimeType': instance.$type,
    };

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
      code: $enumDecode(_$AppMessageCodeEnumEnumMap, json['code']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
      'code': _$AppMessageCodeEnumEnumMap[instance.code]!,
      'message': instance.message,
    };

const _$AppMessageCodeEnumEnumMap = {
  AppMessageCodeEnum.i200001: 'i200001',
  AppMessageCodeEnum.e410001: 'e410001',
  AppMessageCodeEnum.e410002: 'e410002',
  AppMessageCodeEnum.e410003: 'e410003',
  AppMessageCodeEnum.e410004: 'e410004',
  AppMessageCodeEnum.e420001: 'e420001',
  AppMessageCodeEnum.e420002: 'e420002',
  AppMessageCodeEnum.e420003: 'e420003',
  AppMessageCodeEnum.e430001: 'e430001',
  AppMessageCodeEnum.e430002: 'e430002',
  AppMessageCodeEnum.e430003: 'e430003',
  AppMessageCodeEnum.e430004: 'e430004',
  AppMessageCodeEnum.e500001: 'e500001',
  AppMessageCodeEnum.ec00001: 'ec00001',
};
