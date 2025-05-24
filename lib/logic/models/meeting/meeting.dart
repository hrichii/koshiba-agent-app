import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/enums/deploy_status.dart';

part 'meeting.freezed.dart';
part 'meeting.g.dart';

@freezed
abstract class Meeting with _$Meeting {
  const factory Meeting({
    String? id,
    Uri? url,
    @JsonKey(name: 'deploy_status') required DeployStatus deployStatus,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'start_at') DateTime? startAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
  }) = _Meeting;

  const Meeting._();

  factory Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);
}
