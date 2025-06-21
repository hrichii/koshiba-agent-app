import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/utils/converter/date_time_converter.dart';
import 'package:koshiba_agent_app/core/validation/app_validation.dart';
import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'meeting_schedule_form.freezed.dart';
part 'meeting_schedule_form.g.dart';
part 'meeting_schedule_form.gform.dart';

@freezed
@Rf()
@RfGroup(
  validators: [
    _BeforeEndAtValidator(fieldNameEnum: FieldNameEnum.meetingEndAt),
    _RequiredStartAtValidator(fieldNameEnum: FieldNameEnum.meetingStartAt),
  ],
)
abstract class MeetingScheduleForm with _$MeetingScheduleForm {
  const factory MeetingScheduleForm({
    @RfControl(validators: AppValidation.meetingTitle)
    @JsonKey(name: 'title')
    @RfControl()
    String? title,
    @JsonKey(name: 'url')
    @RfControl(validators: AppValidation.meetingUri)
    String? uri,
    @JsonKey(name: 'is_join_right_now', defaultValue: true)
    @RfControl(validators: AppValidation.meetingBotJoinTiming)
    bool? isJoinRightNow,
    @DateTimeConverter()
    @JsonKey(name: 'start_at')
    @RfControl(validators: AppValidation.meetingStartAt)
    DateTime? startAt,
    @JsonKey(name: 'end_at') @RfControl() DateTime? endAt,
    @JsonKey(name: 'description') @RfControl() String? description,
  }) = _MeetingScheduleForm;

  const MeetingScheduleForm._();

  factory MeetingScheduleForm.fromJson(Map<String, dynamic> json) =>
      _$MeetingScheduleFormFromJson(json);
}

class _BeforeEndAtValidator extends Validator<dynamic> {
  const _BeforeEndAtValidator({required this.fieldNameEnum});
  final FieldNameEnum fieldNameEnum;

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final form = control as FormGroup;
    final isJoinRightNow = form.control('isJoinRightNow').value;
    final startAt = form.control('startAt').value;
    final endAt = form.control('endAt').value;

    if (isJoinRightNow is bool && startAt is DateTime && endAt is DateTime) {
      if (!isJoinRightNow && endAt.isBefore(startAt)) {
        return {
          ValidationKeyEnum.beforeEndAtWithFieldName.name: {
            'fieldName': fieldNameEnum.toString(),
          },
        };
      }
    }
    return null;
  }
}

class _RequiredStartAtValidator extends Validator<dynamic> {
  const _RequiredStartAtValidator({required this.fieldNameEnum});
  final FieldNameEnum fieldNameEnum;

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final form = control as FormGroup;
    final isJoinRightNow = form.control('isJoinRightNow').value;
    final startAt = form.control('startAt').value;

    // isJoinRightNowがfalseの場合、startAtは必須です。
    if (isJoinRightNow is bool && !isJoinRightNow && startAt == null) {
      return {
        ValidationKeyEnum.requiredWithFieldName.name: {
          'fieldName': fieldNameEnum.toString(),
        },
      };
    }
    return null;
  }
}
