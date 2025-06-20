import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/utils/converter/date_time_converter.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_create_source.dart';

part 'meeting_create_request_dto.freezed.dart';
part 'meeting_create_request_dto.g.dart';

@freezed
abstract class MeetingCreateRequestDto with _$MeetingCreateRequestDto {
  const factory MeetingCreateRequestDto({
    required Uri url,
    @DateTimeConverter() @JsonKey(name: 'start_at') required DateTime? startAt,
    required MeetingCreateSource source,
    @JsonKey(name: 'google_calendar_id') String? googleCalendarId,
  }) = _MeetingCreateRequestDto;

  factory MeetingCreateRequestDto.fromGoogleCalendar({
    required Uri url,
    required DateTime startAt,
    required String googleCalendarId,
  }) => MeetingCreateRequestDto(
    url: url,
    startAt: startAt,
    googleCalendarId: googleCalendarId,
    source: MeetingCreateSource.googleCalendar,
  );

  factory MeetingCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MeetingCreateRequestDtoFromJson(json);
}
