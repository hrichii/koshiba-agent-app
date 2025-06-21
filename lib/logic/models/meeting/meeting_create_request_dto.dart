import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/utils/converter/date_time_converter.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_create_source.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_schedule_form.dart';
// import 'package:koshiba_agent_app/logic/models/meeting/meeting_schedule_form.dart';

part 'meeting_create_request_dto.freezed.dart';
part 'meeting_create_request_dto.g.dart';

@freezed
abstract class MeetingCreateRequestDto with _$MeetingCreateRequestDto {
  const factory MeetingCreateRequestDto({
    required String title,
    required Uri url,
    required MeetingCreateSource source,
    @DateTimeConverter() @JsonKey(name: 'start_at') required DateTime? startAt,
    @DateTimeConverter() @JsonKey(name: 'end_at') required DateTime? endAt,
    required String? description,
    @JsonKey(name: 'google_calendar_id') required String? googleCalendarId,
  }) = _MeetingCreateRequestDto;

  const MeetingCreateRequestDto._();

  factory MeetingCreateRequestDto.fromScheduleForm(MeetingScheduleForm form) {
    if (form.isJoinRightNow == true) {
      return MeetingCreateRequestDto(
        title: form.title!,
        url: Uri.parse(form.uri!),
        startAt: null,
        endAt: null,
        description: form.description,
        googleCalendarId: null,
        source: MeetingCreateSource.koshiba,
      );
    }
    return MeetingCreateRequestDto(
      title: form.title!,
      url: Uri.parse(form.uri!),
      startAt: form.startAt!,
      endAt: form.endAt,
      description: form.description,
      googleCalendarId: null,
      source: MeetingCreateSource.koshiba,
    );
  }

  factory MeetingCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MeetingCreateRequestDtoFromJson(json);
}
