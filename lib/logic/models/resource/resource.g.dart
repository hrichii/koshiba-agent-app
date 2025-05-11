// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceDone<S> _$ResourceDoneFromJson<S>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
) =>
    ResourceDone<S>(
      value: fromJsonS(json['value']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResourceDoneToJson<S>(
  ResourceDone<S> instance,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'value': toJsonS(instance.value),
      'runtimeType': instance.$type,
    };

ResourceInProgress<S> _$ResourceInProgressFromJson<S>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
) =>
    ResourceInProgress<S>(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResourceInProgressToJson<S>(
  ResourceInProgress<S> instance,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

ResourceError<S> _$ResourceErrorFromJson<S>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
) =>
    ResourceError<S>(
      value: AppException.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResourceErrorToJson<S>(
  ResourceError<S> instance,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
      'runtimeType': instance.$type,
    };
