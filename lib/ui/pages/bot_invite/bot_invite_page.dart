import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/constants/app_text_theme.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/data/repositories/meeting_repository.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_create_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_with_scroll.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';

class BotInvitePage extends ConsumerWidget {
  const BotInvitePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: Text(
            AppMessage.current.common_invite_bot,
            style: AppTextStyle.bodyLarge16.withGray100(),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MeetingFormBuilder(
              model: const Meeting(),
              builder: (context, form, _) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ReactiveTextFieldWithScroll<String>(
                    formControl: form.uriControl,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: AppMessage.current.field_meeting_url,
                    ),
                    onSubmitted: (_) => onSubmitted(ref, form),
                  ),
                  ReactiveDateTimePicker(
                    formControl: form.startedAtControl,
                    decoration: InputDecoration(
                      hintText: AppMessage.current.field_meeting_started_at,
                    ),
                  ),
                  ReactiveMeetingFormConsumer(
                    builder: (_, form, ___) => FilledButton(
                      onPressed: !form.form.valid
                          ? null
                          : () => onSubmitted(ref, form),
                      child: Text(AppMessage.current.meeting_register),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  Future<Result<Meeting, AppMessageCode>> onSubmitted(
    WidgetRef ref,
    MeetingForm form,
  ) =>
      ref
          .read(meetingRepositoryProvider)
          .registerMeeting(
            dto: MeetingCreateRequestDto(
              url: Uri.parse(form.model.uri!),
              startedAt: form.model.startedAt!,
            ),
          )
          .withLoaderOverlay()
          .withToastAtError()
          .withToastAtSuccess(
            (_) => AppMessage.current.meeting_register_success,
          );
}
