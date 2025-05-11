// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultOk<S, E> _$ResultOkFromJson<S, E>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
  E Function(Object? json) fromJsonE,
) =>
    ResultOk<S, E>(
      value: fromJsonS(json['value']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResultOkToJson<S, E>(
  ResultOk<S, E> instance,
  Object? Function(S value) toJsonS,
  Object? Function(E value) toJsonE,
) =>
    <String, dynamic>{
      'value': toJsonS(instance.value),
      'runtimeType': instance.$type,
    };

ResultNg<S, E> _$ResultNgFromJson<S, E>(
  Map<String, dynamic> json,
  S Function(Object? json) fromJsonS,
  E Function(Object? json) fromJsonE,
) =>
    ResultNg<S, E>(
      value: fromJsonE(json['value']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResultNgToJson<S, E>(
  ResultNg<S, E> instance,
  Object? Function(S value) toJsonS,
  Object? Function(E value) toJsonE,
) =>
    <String, dynamic>{
      'value': toJsonE(instance.value),
      'runtimeType': instance.$type,
    };
