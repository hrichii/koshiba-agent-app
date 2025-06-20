// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_update_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingUpdateRequestDto _$MeetingUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _MeetingUpdateRequestDto(
  startAt: _$JsonConverterFromJson<String, DateTime>(
    json['start_at'],
    const DateTimeConverter().fromJson,
  ),
  url: json['url'] as String?,
);

Map<String, dynamic> _$MeetingUpdateRequestDtoToJson(
  _MeetingUpdateRequestDto instance,
) => <String, dynamic>{
  'start_at': _$JsonConverterToJson<String, DateTime>(
    instance.startAt,
    const DateTimeConverter().toJson,
  ),
  'url': instance.url,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
