import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:riverpod/riverpod.dart';

final chatDataSourceProvider = Provider(
  (ref) => ChatDataSource(),
);

class ChatDataSource {
  Future<Result<List<ChatRoom>, AppMessageCode>> getChatRoomList() async {
    await Future.delayed(const Duration(seconds: 2));
    return ResultOk(
      value: [
        ChatRoom(
          id: '1',
          title: 'Chat Room 1',
          createdAt: DateTime.now(),
          chatList: [],
        ),
        ChatRoom(
          id: '2',
          title: 'Chat Room 2',
          createdAt: DateTime.now(),
          chatList: [],
        ),
      ],
    );
  }

  Future<Result<ChatRoom, AppMessageCode>> addChatRoom(
    ChatRoom chatRoom,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
    return ResultOk(
      value: ChatRoom(
        id: '3',
        title: 'Chat Room 3',
        createdAt: DateTime.now(),
        chatList: [],
      ),
    );
  }

  Future<Result<void, AppMessageCode>> deleteChatRoom(String chatRoomId) async {
    await Future.delayed(const Duration(seconds: 1));
    return const ResultOk(value: null);
  }

  Future<Result<ChatRoom, AppMessageCode>> updateChatRoom(
    ChatRoom chatRoom,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return ResultOk(
      value: ChatRoom(
        id: chatRoom.id,
        title: chatRoom.title,
        createdAt: DateTime.now(),
        chatList: chatRoom.chatList,
      ),
    );
  }
}
