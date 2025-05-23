import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/validation/app_validation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'meeting_create_form.freezed.dart';
part 'meeting_create_form.g.dart';
part 'meeting_create_form.gform.dart';

@freezed
@Rf()
abstract class MeetingCreateForm with _$MeetingCreateForm {
  const factory MeetingCreateForm({
    @JsonKey(name: 'url')
    @RfControl(validators: AppValidation.meetingUri)
    String? uri,
    @JsonKey(name: 'started_at')
    @RfControl(validators: AppValidation.meetingStartedAt)
    DateTime? startedAt,
  }) = _MeetingCreateForm;

  const MeetingCreateForm._();

  factory MeetingCreateForm.fromJson(Map<String, dynamic> json) =>
      _$MeetingCreateFormFromJson(json);
}
