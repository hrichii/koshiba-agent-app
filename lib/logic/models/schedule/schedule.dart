import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
abstract class Schedule with _$Schedule {
  const factory Schedule({
    @JsonKey(name: 'google_calendar_event') CalendarEvent? googleCalendarEvent,
    @JsonKey(name: 'scheduled_bot') Meeting? scheduledBot,
  }) = _Schedule;

  const Schedule._();
  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);

  bool get isJoined => scheduledBot != null;
}
