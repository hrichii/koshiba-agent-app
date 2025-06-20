import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/themes/app_assets.dart';
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
  bool get canJoin =>
      googleCalendarEvent != null &&
      googleCalendarEvent!.startAt != null &&
      googleCalendarEvent!.startAt!.isAfter(DateTime.now()) &&
      googleCalendarEvent!.url != null;

  String? get title => googleCalendarEvent?.title ?? scheduledBot?.title;

  String? get description =>
      googleCalendarEvent?.description ?? scheduledBot?.description;

  Uri? get url => googleCalendarEvent?.url ?? scheduledBot?.url;

  DateTime? get startAt =>
      googleCalendarEvent?.startAt ?? scheduledBot?.startAt;

  DateTime? get endAt => googleCalendarEvent?.endAt ?? scheduledBot?.endAt;

  bool get hasGoogleCalendarEvent => googleCalendarEvent != null;

  AppAsset get iconAsset {
    if (hasGoogleCalendarEvent) {
      return AppAssets.imagesGoogleCalendarIcon;
    } else {
      return AppAssets.imagesAppIcon;
    }
  }
}
