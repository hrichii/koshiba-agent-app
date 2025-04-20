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

_ResultFailure<S, E> _$ResultFailureFromJson<S, E>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
  E Function(Object? json) fromJsonE,
) =>
    _ResultFailure<S, E>(
      value: fromJsonE(json['value']),
    );

Map<String, dynamic> _$ResultFailureToJson<S, E>(
  _ResultFailure<S, E> instance,
  Object? Function(S value) toJsonS,
  Object? Function(E value) toJsonE,
) =>
    <String, dynamic>{
      'value': toJsonE(instance.value),
    };
