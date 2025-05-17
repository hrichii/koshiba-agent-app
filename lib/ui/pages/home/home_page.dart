import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/data/repositories/account_repository.dart';
import 'package:koshiba_agent_app/data/repositories/meeting_repository.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/chat_list/chat_list_use_case.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_with_scroll.dart';
import 'package:koshiba_agent_app/ui/routers/router.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        Future(ref.read(chatListUseCaseProvider.notifier).getChatRoomList);
        return null;
      },
      [],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connected Home'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('data'),
          ...switch (ref.watch(chatListUseCaseProvider)) {
            ResourceDone<List<ChatRoom>>(value: final chatRoomList) =>
              chatRoomList.map((chatRoom) => Text(chatRoom.id)).toList(),
            ResourceInProgress<List<ChatRoom>>() => [const Text('InProgress')],
            ResourceError<List<ChatRoom>>() => [const Text('Error')],
          },
          FilledButton(
            onPressed: ref
                .read(chatListUseCaseProvider.notifier)
                .getChatRoomListWithClearCache,
            child: const Text('refresh'),
          ),
          FilledButton(
            onPressed: () =>
                ref.read(chatListUseCaseProvider.notifier).deleteChatRoom('1'),
            child: const Text('deleteChatRoom'),
          ),
          FilledButton(
            onPressed: () =>
                ref.read(chatListUseCaseProvider.notifier).addChatRoom(
                      ChatRoom(
                        id: 'id',
                        title: 'title',
                        chatList: [],
                        createdAt: DateTime.now(),
                      ),
                    ),
            child: const Text('addChatRoom'),
          ),
          FilledButton(
            onPressed: () =>
                ref.read(chatListUseCaseProvider.notifier).updateChatRoom(
                      ChatRoom(
                        id: 'id',
                        title: 'title',
                        chatList: [],
                        createdAt: DateTime.now(),
                      ),
                    ),
            child: const Text('updateChatRoom'),
          ),
          FilledButton(
            onPressed: () => ref
                .read(accountRepositoryProvider)
                .signOut()
                .withLoaderOverlay()
                .withToastAtError()
                .withToastAtSuccess((_) => AppMessage.current.sign_out_success)
                .onSuccessWithoutValue(const SignInRouteData().go),
            child: const Text('signOut'),
          ),
          FilledButton(
            onPressed: () => ref
                .read(accountRepositoryProvider)
                .deleteMe()
                .withLoaderOverlay()
                .withToastAtError()
                .withToastAtSuccess(
                  (_) => AppMessage.current.account_delete_success,
                )
                .onSuccessWithoutValue(const SignInRouteData().go),
            child: const Text('アカウント削除'),
          ),
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
                ReactiveMeetingFormConsumer(
                  builder: (_, form, ___) => FilledButton(
                    onPressed:
                        !form.form.valid ? null : () => onSubmitted(ref, form),
                    child: Text(AppMessage.current.meeting_register),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<Result<Meeting, AppMessageCode>> onSubmitted(
    WidgetRef ref,
    MeetingForm form,
  ) =>
      ref
          .read(meetingRepositoryProvider)
          .registerMeeting(
            meeting: form.model,
          )
          .withLoaderOverlay()
          .withToastAtError()
          .withToastAtSuccess(
            (_) => AppMessage.current.meeting_register_success,
          );
}
