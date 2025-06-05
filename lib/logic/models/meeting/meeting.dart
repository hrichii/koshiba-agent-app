import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting.freezed.dart';
part 'meeting.g.dart';

@freezed
abstract class Meeting with _$Meeting {
  const factory Meeting({
    String? id,
    Uri? url,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'start_at') DateTime? startAt,
    @JsonKey(name: 'meeting_baas_id') String? meetingBaasId,
  }) = _Meeting;

  const Meeting._();

  factory Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);
}
