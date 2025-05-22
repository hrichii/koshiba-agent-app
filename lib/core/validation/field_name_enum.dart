import 'package:koshiba_agent_app/generated/l10n.dart';

enum FieldNameEnum {
  email,
  password,
  meetingUrl,
  meetingStartedAt;

  @override
  String toString() => switch (this) {
        FieldNameEnum.email => AppMessage.current.field_email,
        FieldNameEnum.password => AppMessage.current.field_password,
        FieldNameEnum.meetingUrl => AppMessage.current.field_meeting_url,
        FieldNameEnum.meetingStartedAt =>
          AppMessage.current.field_meeting_started_at,
      };

  String get unit => switch (this) {
        _ => AppMessage.current.unit_letter,
      };
}
