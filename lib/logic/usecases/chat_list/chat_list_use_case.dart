import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/data/repositories/chat_list_repository.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:koshiba_agent_app/logic/models/resource/resource.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/chat_list/chat_list_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_list_use_case.g.dart';

@riverpod
class ChatListUseCase extends _$ChatListUseCase {
  ChatListRepositoryInterface get _chatListRepository =>
      ref.read(chatListRepositoryProvider);

  @override
  Resource<List<ChatRoom>> build() =>
      const ResourceInProgress<List<ChatRoom>>();

  Future<Result<void, AppException>> getChatRoomListWithClearCache() async {
    _chatListRepository.clearCache();
    return _getChatRoomList(
      stateAtInProgress: const ResourceInProgress<List<ChatRoom>>(),
    );
  }

  Future<Result<void, AppException>> getChatRoomList() => _getChatRoomList(
        stateAtInProgress: const ResourceInProgress<List<ChatRoom>>(),
      );

  Future<Result<void, AppException>> _getChatRoomList({
    required Resource<List<ChatRoom>> stateAtInProgress,
  }) async {
    final preState = state;
    state = stateAtInProgress;
    switch (await _chatListRepository.getChatRoomList()) {
      case ResultOk<List<ChatRoom>, AppException>(:final value):
        state = ResourceDone<List<ChatRoom>>(value: value);
        return const ResultOk(value: null);
      case ResultNg<List<ChatRoom>, AppException>(:final value):
        state = switch (preState) {
          ResourceDone<List<ChatRoom>>() => preState,
          ResourceInProgress<List<ChatRoom>>() ||
          ResourceError<List<ChatRoom>>() =>
            ResourceError<List<ChatRoom>>(value: value),
        };
        return ResultNg(value: value);
    }
  }

  Future<Result<void, AppException>> addChatRoom(ChatRoom chatRoom) async {
    switch (await _chatListRepository.addChatRoom(chatRoom)) {
      case ResultOk<void, AppException>():
        return _getChatRoomList(stateAtInProgress: state);
      case ResultNg<void, AppException>(:final value):
        return ResultNg(value: value);
    }
  }

  Future<Result<void, AppException>> deleteChatRoom(String chatRoomId) async {
    switch (await _chatListRepository.deleteChatRoom(chatRoomId)) {
      case ResultOk<void, AppException>():
        return _getChatRoomList(stateAtInProgress: state);
      case ResultNg<void, AppException>(:final value):
        return ResultNg(value: value);
    }
  }

  Future<Result<void, AppException>> updateChatRoom(ChatRoom chatRoom) async {
    switch (await _chatListRepository.updateChatRoom(chatRoom)) {
      case ResultOk<void, AppException>():
        return _getChatRoomList(stateAtInProgress: state);
      case ResultNg<void, AppException>(:final value):
        return ResultNg(value: value);
    }
  }
}
