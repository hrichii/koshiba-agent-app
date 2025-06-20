// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_schedule_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingScheduleForm _$MeetingScheduleFormFromJson(Map<String, dynamic> json) =>
    _MeetingScheduleForm(
      uri: json['url'] as String?,
      startAt: _$JsonConverterFromJson<String, DateTime>(
        json['start_at'],
        const DateTimeConverter().fromJson,
      ),
    );

Map<String, dynamic> _$MeetingScheduleFormToJson(
  _MeetingScheduleForm instance,
) => <String, dynamic>{
  'url': instance.uri,
  'start_at': _$JsonConverterToJson<String, DateTime>(
    instance.startAt,
    const DateTimeConverter().toJson,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
