// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResultSuccess<S, E> _$ResultSuccessFromJson<S, E>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
  E Function(Object? json) fromJsonE,
) =>
    _ResultSuccess<S, E>(
      value: fromJsonS(json['value']),
    );

Map<String, dynamic> _$ResultSuccessToJson<S, E>(
  _ResultSuccess<S, E> instance,
  Object? Function(S value) toJsonS,
  Object? Function(E value) toJsonE,
) =>
    <String, dynamic>{
      'value': toJsonS(instance.value),
    };

_ResultError<S, E> _$ResultErrorFromJson<S, E>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
  E Function(Object? json) fromJsonE,
) =>
    _ResultError<S, E>(
      value: fromJsonE(json['value']),
    );

Map<String, dynamic> _$ResultErrorToJson<S, E>(
  _ResultError<S, E> instance,
  Object? Function(S value) toJsonS,
  Object? Function(E value) toJsonE,
) =>
    <String, dynamic>{
      'value': toJsonE(instance.value),
    };
