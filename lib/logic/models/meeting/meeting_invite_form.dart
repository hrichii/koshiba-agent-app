import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/validation/app_validation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'meeting_invite_form.freezed.dart';
part 'meeting_invite_form.g.dart';
part 'meeting_invite_form.gform.dart';

@freezed
@Rf()
abstract class MeetingInviteForm with _$MeetingInviteForm {
  const factory MeetingInviteForm({
    @JsonKey(name: 'url')
    @RfControl(validators: AppValidation.meetingUri)
    String? uri,
  }) = _MeetingInviteForm;

  const MeetingInviteForm._();

  factory MeetingInviteForm.fromJson(Map<String, dynamic> json) =>
      _$MeetingInviteFormFromJson(json);
}
