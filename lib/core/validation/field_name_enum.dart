import 'package:koshiba_agent_app/generated/l10n.dart';

enum FieldNameEnum {
  email,
  password,
  meetingTitle,
  meetingUrl,
  meetingStartAt,
  meetingEndAt,
  meetingBotJoinTiming;

  @override
  String toString() => switch (this) {
    FieldNameEnum.email => AppMessage.current.field_email,
    FieldNameEnum.password => AppMessage.current.field_password,
    FieldNameEnum.meetingTitle => AppMessage.current.field_meeting_title,
    FieldNameEnum.meetingUrl => AppMessage.current.field_meeting_url,
    FieldNameEnum.meetingStartAt => AppMessage.current.field_meeting_start_at,
    FieldNameEnum.meetingEndAt => AppMessage.current.field_meeting_end_at,
    FieldNameEnum.meetingBotJoinTiming =>
      AppMessage.current.field_meeting_bot_join_timing,
  };

  String get unit => switch (this) {
    _ => AppMessage.current.unit_letter,
  };
}
