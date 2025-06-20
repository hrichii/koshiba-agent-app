// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_create_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingCreateRequestDto _$MeetingCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _MeetingCreateRequestDto(
  url: Uri.parse(json['url'] as String),
  startAt: _$JsonConverterFromJson<String, DateTime>(
    json['start_at'],
    const DateTimeConverter().fromJson,
  ),
  source: $enumDecode(_$MeetingCreateSourceEnumMap, json['source']),
  googleCalendarId: json['google_calendar_id'] as String?,
);

Map<String, dynamic> _$MeetingCreateRequestDtoToJson(
  _MeetingCreateRequestDto instance,
) => <String, dynamic>{
  'url': instance.url.toString(),
  'start_at': _$JsonConverterToJson<String, DateTime>(
    instance.startAt,
    const DateTimeConverter().toJson,
  ),
  'source': _$MeetingCreateSourceEnumMap[instance.source]!,
  'google_calendar_id': instance.googleCalendarId,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$MeetingCreateSourceEnumMap = {
  MeetingCreateSource.koshiba: 'koshiba',
  MeetingCreateSource.googleCalendar: 'google_calendar',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
