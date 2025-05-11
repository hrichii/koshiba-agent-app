import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/validation/app_validation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'meeting.freezed.dart';
part 'meeting.g.dart';
part 'meeting.gform.dart';

@freezed
@Rf()
abstract class Meeting with _$Meeting {
  const factory Meeting({
    @RfControl(validators: AppValidation.uri) String? uri,
  }) = _Meeting;

  const Meeting._();

  factory Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);
}
