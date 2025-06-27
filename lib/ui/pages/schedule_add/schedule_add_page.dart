import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_create_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_schedule_form.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/schedule/schedule_list_use_case.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_with_scroll.dart';
import 'package:koshiba_agent_app/ui/core/toast/toast.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_segmented_control/reactive_segmented_control.dart';

class ScheduleAddPage extends ConsumerWidget {
  const ScheduleAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
    appBar: AppBar(
      title: Text(
        AppMessage.current.common_invite_bot,
        style: AppTextStyle.bodyLarge16,
      ),
      centerTitle: true,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(height: 1, color: AppColor.gray90),
      ),
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpace.xl24,
          vertical: AppSpace.xl24,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: MeetingScheduleFormFormBuilder(
              model: const MeetingScheduleForm(isJoinRightNow: false),
              builder: (context, form, _) => Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildTitleView(form),
                  const SizedBox(height: AppSpace.xl24),
                  _buildUrlView(form),
                  const SizedBox(height: AppSpace.xl24),
                  _buildJoinSettingView(form),
                  const SizedBox(height: AppSpace.xl24),
                  ReactiveMeetingScheduleFormFormConsumer(
                    builder: (_, form, _) {
                      if (form.isJoinRightNowControl.value == true) {
                        return const SizedBox.shrink();
                      }
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _buildStartTimeView(form),
                          _buildStartTimeValidationView(),
                          const SizedBox(height: AppSpace.lg16),
                          _buildEndTimeView(form),
                          _buildEndTimeValidationView(),
                          const SizedBox(height: AppSpace.xl24),
                        ],
                      );
                    },
                  ),
                  _buildDescriptionView(form),
                  const SizedBox(height: AppSpace.xl24),
                  _buildSubmitButtonView(
                    form,
                    (formModel) => onSubmitted(ref, formModel),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
  Future<Result<void, AppMessageCode>> onSubmitted(
    WidgetRef ref,
    MeetingScheduleForm form,
  ) => ref
      .read(scheduleListUseCaseProvider.notifier)
      .registerScheduledBot(MeetingCreateRequestDto.fromScheduleForm(form))
      .withLoaderOverlay()
      .onSuccess(
        (_) => Toast().showSuccess(AppMessage.current.meeting_register_success),
      )
      .onError(Toast().showErrorByMessagecode);

  Widget _buildTitleView(MeetingScheduleFormForm form) => Row(
    children: [
      Icon(Icons.title, color: AppColor.gray40),
      const SizedBox(width: 8),
      Expanded(
        child: ReactiveTextFieldWithScroll<String>(
          formControl: form.titleControl,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: AppMessage.current.field_meeting_title,
            border: const UnderlineInputBorder(),
            enabledBorder: const UnderlineInputBorder(),
            focusedBorder: const UnderlineInputBorder(),
          ),
        ),
      ),
    ],
  );

  Widget _buildUrlView(MeetingScheduleFormForm form) => Row(
    children: [
      Icon(Icons.link, color: AppColor.gray40),
      const SizedBox(width: 8),
      Expanded(
        child: ReactiveTextFieldWithScroll<String>(
          formControl: form.uriControl,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: AppMessage.current.field_meeting_url,
            border: const UnderlineInputBorder(),
            enabledBorder: const UnderlineInputBorder(),
            focusedBorder: const UnderlineInputBorder(),
          ),
        ),
      ),
    ],
  );

  Widget _buildJoinSettingView(MeetingScheduleFormForm form) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.meeting_room, color: AppColor.gray40),
      SizedBox(
        width: 300,
        child: ReactiveSegmentedControl(
          padding: EdgeInsets.zero,
          decoration: const InputDecoration(
            fillColor: Colors.transparent,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
          formControl: form.isJoinRightNowControl,
          children: {
            false: Text(
              AppMessage.current.schedule_add_meeting_join_start_time,
            ),
            true: Text(AppMessage.current.schedule_add_meeting_join_right_now),
          },
        ),
      ),
    ],
  );

  Widget _buildStartTimeView(MeetingScheduleFormForm form) => Row(
    children: [
      Icon(Icons.access_time, color: AppColor.gray40),
      const SizedBox(width: 8),
      Expanded(
        child: ReactiveDateTimePicker(
          type: ReactiveDatePickerFieldType.dateTime,
          formControl: form.startAtControl,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: AppMessage.current.field_meeting_start_at,
            border: const UnderlineInputBorder(),
            enabledBorder: const UnderlineInputBorder(),
            focusedBorder: const UnderlineInputBorder(),
          ),
        ),
      ),
    ],
  );

  Widget _buildStartTimeValidationView() =>
      ReactiveMeetingScheduleFormFormConsumer(
        builder: (_, form, _) {
          if (form.form.errors.containsKey(
            ValidationKeyEnum.afterCurrentTime.name,
          )) {
            return Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppMessage.current.validation_after_current_time(
                  FieldNameEnum.meetingStartAt.toString(),
                ),
                style: AppTextStyle.bodySmall12.withError(),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      );

  Widget _buildEndTimeView(MeetingScheduleFormForm form) => Row(
    children: [
      const SizedBox(width: 32), // Icon + spacing分の空白でアライメント調整
      Expanded(
        child: ReactiveDateTimePicker(
          type: ReactiveDatePickerFieldType.dateTime,
          formControl: form.endAtControl,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: AppMessage.current.field_meeting_end_at,
            border: const UnderlineInputBorder(),
            enabledBorder: const UnderlineInputBorder(),
            focusedBorder: const UnderlineInputBorder(),
          ),
        ),
      ),
    ],
  );

  Widget _buildEndTimeValidationView() =>
      ReactiveMeetingScheduleFormFormConsumer(
        builder: (_, form, _) {
          if (form.form.errors.containsKey(
            ValidationKeyEnum.beforeEndAtWithFieldName.name,
          )) {
            return Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppMessage.current.validation_before_end_at(
                  FieldNameEnum.meetingEndAt.toString(),
                ),
                style: AppTextStyle.bodySmall12.withError(),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      );

  Widget _buildDescriptionView(MeetingScheduleFormForm form) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(Icons.notes, color: AppColor.gray40),
      const SizedBox(width: AppSpace.sm8),
      Expanded(
        child: ReactiveTextFieldWithScroll<String>(
          formControl: form.descriptionControl,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: AppMessage.current.field_meeting_description,
            filled: true,
            fillColor: AppColor.gray95,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md8),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md8),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppRadius.md8),
              borderSide: BorderSide.none,
            ),
          ),
          maxLines: 4,
        ),
      ),
    ],
  );

  Widget _buildSubmitButtonView(
    MeetingScheduleFormForm form,
    Future<Result<void, AppMessageCode>> Function(MeetingScheduleForm) onSubmit,
  ) => ReactiveMeetingScheduleFormFormConsumer(
    builder: (_, form, _) => Builder(
      builder: (context) => FilledButton(
        onPressed: !form.form.valid
            ? null
            : () async {
                final result = await onSubmit(form.model);
                switch (result) {
                  case ResultOk<void, AppMessageCode>():
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  case ResultNg<void, AppMessageCode>():
                }
              },
        child: Text(AppMessage.current.meeting_register),
      ),
    ),
  );
}
