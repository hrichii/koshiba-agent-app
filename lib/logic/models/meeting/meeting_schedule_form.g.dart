// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_schedule_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingScheduleForm _$MeetingScheduleFormFromJson(Map<String, dynamic> json) =>
    _MeetingScheduleForm(
      title: json['title'] as String?,
      uri: json['url'] as String?,
      isJoinRightNow: json['is_join_right_now'] as bool? ?? true,
      startAt: _$JsonConverterFromJson<String, DateTime>(
        json['start_at'],
        const DateTimeConverter().fromJson,
      ),
      endAt: json['end_at'] == null
          ? null
          : DateTime.parse(json['end_at'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MeetingScheduleFormToJson(
  _MeetingScheduleForm instance,
) => <String, dynamic>{
  'title': instance.title,
  'url': instance.uri,
  'is_join_right_now': instance.isJoinRightNow,
  'start_at': _$JsonConverterToJson<String, DateTime>(
    instance.startAt,
    const DateTimeConverter().toJson,
  ),
  'end_at': instance.endAt?.toIso8601String(),
  'description': instance.description,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
