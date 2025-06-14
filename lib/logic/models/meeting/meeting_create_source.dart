import 'package:json_annotation/json_annotation.dart';

enum MeetingCreateSource {
  @JsonValue('koshiba')
  koshiba,
  @JsonValue('google_calendar')
  googleCalendar,
}
