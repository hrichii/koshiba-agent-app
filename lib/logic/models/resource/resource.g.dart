// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResourceDone<D> _$ResourceDoneFromJson<D>(
  Map<String, dynamic> json,
  D Function(Object? json) fromJsonD,
) =>
    _ResourceDone<D>(
      value: fromJsonD(json['value']),
    );

Map<String, dynamic> _$ResourceDoneToJson<D>(
  _ResourceDone<D> instance,
  Object? Function(D value) toJsonD,
) =>
    <String, dynamic>{
      'value': toJsonD(instance.value),
    };

_ResourceInProgress<D> _$ResourceInProgressFromJson<D>(
  Map<String, dynamic> json,
  D Function(Object? json) fromJsonD,
) =>
    _ResourceInProgress<D>();

Map<String, dynamic> _$ResourceInProgressToJson<D>(
  _ResourceInProgress<D> instance,
  Object? Function(D value) toJsonD,
) =>
    <String, dynamic>{};

_ResourceError<D> _$ResourceErrorFromJson<D>(
  Map<String, dynamic> json,
  D Function(Object? json) fromJsonD,
) =>
    _ResourceError<D>(
      value: AppException.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResourceErrorToJson<D>(
  _ResourceError<D> instance,
  Object? Function(D value) toJsonD,
) =>
    <String, dynamic>{
      'value': instance.value,
    };
