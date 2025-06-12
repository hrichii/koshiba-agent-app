// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_schedule_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingScheduleForm _$MeetingScheduleFormFromJson(Map<String, dynamic> json) =>
    _MeetingScheduleForm(
      uri: json['url'] as String?,
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
    );

Map<String, dynamic> _$MeetingScheduleFormToJson(
  _MeetingScheduleForm instance,
) => <String, dynamic>{
  'url': instance.uri,
  'start_at': instance.startAt?.toIso8601String(),
};
