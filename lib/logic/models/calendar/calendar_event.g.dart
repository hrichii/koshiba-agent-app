// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CalendarEvent _$CalendarEventFromJson(Map<String, dynamic> json) =>
    _CalendarEvent(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      startAt: _$JsonConverterFromJson<String, DateTime>(
          json['startAt'], const DateTimeConverter().fromJson),
      endAt: _$JsonConverterFromJson<String, DateTime>(
          json['endAt'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$CalendarEventToJson(_CalendarEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url?.toString(),
      'startAt': _$JsonConverterToJson<String, DateTime>(
          instance.startAt, const DateTimeConverter().toJson),
      'endAt': _$JsonConverterToJson<String, DateTime>(
          instance.endAt, const DateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
