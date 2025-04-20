import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/usecases/chat_list/chat_list_use_case.dart';

class ConnectedHomePage extends HookConsumerWidget {
  const ConnectedHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(chatListUseCaseProvider.notifier).getChatRoomList();
        });
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
        ],
      ),
    );
  }
}
