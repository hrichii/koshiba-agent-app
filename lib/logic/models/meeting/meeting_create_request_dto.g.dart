// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingCreateRequestDto _$MeetingCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _MeetingCreateRequestDto(
  title: json['title'] as String,
  url: Uri.parse(json['url'] as String),
  source: $enumDecode(_$MeetingCreateSourceEnumMap, json['source']),
  startAt: _$JsonConverterFromJson<String, DateTime>(
    json['start_at'],
    const DateTimeConverter().fromJson,
  ),
  endAt: _$JsonConverterFromJson<String, DateTime>(
    json['end_at'],
    const DateTimeConverter().fromJson,
  ),
  description: json['description'] as String?,
  googleCalendarId: json['google_calendar_id'] as String?,
);

Map<String, dynamic> _$MeetingCreateRequestDtoToJson(
  _MeetingCreateRequestDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'url': instance.url.toString(),
  'source': _$MeetingCreateSourceEnumMap[instance.source]!,
  'start_at': _$JsonConverterToJson<String, DateTime>(
    instance.startAt,
    const DateTimeConverter().toJson,
  ),
  'end_at': _$JsonConverterToJson<String, DateTime>(
    instance.endAt,
    const DateTimeConverter().toJson,
  ),
  'description': instance.description,
  'google_calendar_id': instance.googleCalendarId,
};

const _$MeetingCreateSourceEnumMap = {
  MeetingCreateSource.koshiba: 'koshiba',
  MeetingCreateSource.googleCalendar: 'google_calendar',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
