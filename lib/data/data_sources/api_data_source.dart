import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:riverpod/riverpod.dart';

final apiDataSourceProvider = Provider(
  (ref) => ApiDataSource(),
);

class ApiDataSource {
  Future<Result<List<ChatRoom>, AppException>> getChatRoomList() async {
    await Future.delayed(const Duration(seconds: 2));
    return ResultSuccess(
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

  Future<Result<ChatRoom, AppException>> addChatRoom(ChatRoom chatRoom) async {
    await Future.delayed(const Duration(seconds: 2));
    return ResultSuccess(
      value: ChatRoom(
        id: '3',
        title: 'Chat Room 3',
        createdAt: DateTime.now(),
        chatList: [],
      ),
    );
  }

  Future<Result<void, AppException>> deleteChatRoom(String chatRoomId) async {
    await Future.delayed(const Duration(seconds: 1));
    return const ResultSuccess(value: null);
  }

  Future<Result<ChatRoom, AppException>> updateChatRoom(
      ChatRoom chatRoom) async {
    await Future.delayed(const Duration(seconds: 1));
    return ResultSuccess(
      value: ChatRoom(
        id: chatRoom.id,
        title: chatRoom.title,
        createdAt: DateTime.now(),
        chatList: chatRoom.chatList,
      ),
    );
  }
}
