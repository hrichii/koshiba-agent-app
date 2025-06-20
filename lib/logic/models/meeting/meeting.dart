import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/utils/converter/date_time_converter.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_bot_status.dart';

part 'meeting.freezed.dart';
part 'meeting.g.dart';

@freezed
abstract class Meeting with _$Meeting {
  const factory Meeting({
    required String id,
    required Uri url,
    @JsonKey(name: 'meeting_baas_id') required String meetingBaasId,
    required MeetingBotStatus status,
    @DateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @DateTimeConverter() @JsonKey(name: 'start_at') required DateTime startAt,
    @DateTimeConverter() @JsonKey(name: 'end_at') DateTime? endAt,
    String? title,
    String? description,
  }) = _Meeting;

  const Meeting._();

  factory Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);
}
