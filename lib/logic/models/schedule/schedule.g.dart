// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Schedule _$ScheduleFromJson(Map<String, dynamic> json) => _Schedule(
  googleCalendarEvent: json['google_calendar_event'] == null
      ? null
      : CalendarEvent.fromJson(
          json['google_calendar_event'] as Map<String, dynamic>,
        ),
  scheduledBot: json['scheduled_bot'] == null
      ? null
      : Meeting.fromJson(json['scheduled_bot'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScheduleToJson(_Schedule instance) => <String, dynamic>{
  'google_calendar_event': instance.googleCalendarEvent?.toJson(),
  'scheduled_bot': instance.scheduledBot?.toJson(),
};
