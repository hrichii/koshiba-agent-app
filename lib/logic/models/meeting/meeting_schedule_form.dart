import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/validation/app_validation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'meeting_schedule_form.freezed.dart';
part 'meeting_schedule_form.g.dart';
part 'meeting_schedule_form.gform.dart';

@freezed
@Rf()
abstract class MeetingScheduleForm with _$MeetingScheduleForm {
  const factory MeetingScheduleForm({
    @JsonKey(name: 'url')
    @RfControl(validators: AppValidation.meetingUri)
    String? uri,
    @JsonKey(name: 'start_at')
    @RfControl(validators: AppValidation.meetingStartAt)
    DateTime? startAt,
  }) = _MeetingScheduleForm;

  const MeetingScheduleForm._();

  factory MeetingScheduleForm.fromJson(Map<String, dynamic> json) =>
      _$MeetingScheduleFormFromJson(json);
}
