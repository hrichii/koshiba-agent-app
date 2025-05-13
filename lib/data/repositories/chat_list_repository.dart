import 'package:koshiba_agent_app/core/extensions/list_ext.dart';
import 'package:koshiba_agent_app/data/data_sources/cache_data_source.dart';
import 'package:koshiba_agent_app/data/data_sources/chat_data_source.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/usecases/chat_list/chat_list_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final chatListRepositoryProvider = Provider(
  (ref) => ChatListRepository(
    chatDataSource: ref.read(chatDataSourceProvider),
    chatRoomListCacheDataSource: ref.read(chatRoomListCacheDataSourceProvider),
  ),
);

class ChatListRepository implements ChatListRepositoryInterface {
  ChatListRepository({
    required ChatDataSource chatDataSource,
    required ChatRoomListCacheDataSource chatRoomListCacheDataSource,
  })  : _chatDataSource = chatDataSource,
        _cacheDataSource = chatRoomListCacheDataSource;

  final ChatDataSource _chatDataSource;
  final ChatRoomListCacheDataSource _cacheDataSource;

  @override
  Future<Result<List<ChatRoom>, AppMessageCode>> getChatRoomList() async {
    final resultByCache = _cacheDataSource.get();
    if (resultByCache != null) {
      return ResultOk(value: resultByCache);
    }
    switch (await _chatDataSource.getChatRoomList()) {
      case final ResultOk<List<ChatRoom>, AppMessageCode> success:
        _cacheDataSource.save(success.value);
        return success;
      case final ResultNg<List<ChatRoom>, AppMessageCode> failure:
        return failure;
    }
  }

  @override
  Future<Result<void, AppMessageCode>> addChatRoom(ChatRoom chatRoom) async {
    switch (await _chatDataSource.addChatRoom(chatRoom)) {
      case ResultOk<ChatRoom, AppMessageCode>(:final value):
        final newChatRoomList = _cacheDataSource.get()?..add(value);
        if (newChatRoomList != null) {
          _cacheDataSource.save(newChatRoomList);
        }
        return const ResultOk(value: null);
      case ResultNg<ChatRoom, AppMessageCode>(:final value):
        return ResultNg(value: value);
    }
  }

  @override
  Future<Result<void, AppMessageCode>> deleteChatRoom(String chatRoomId) async {
    switch (await _chatDataSource.deleteChatRoom(chatRoomId)) {
      case final ResultOk<void, AppMessageCode> success:
        final newChatRoomList = _cacheDataSource.get()
          ?..removeWhere((chatRoom) => chatRoom.id == chatRoomId);
        if (newChatRoomList != null) {
          _cacheDataSource.save(newChatRoomList);
        }
        return success;
      case ResultNg<void, AppMessageCode>(:final value):
        return ResultNg(value: value);
    }
  }

  @override
  Future<Result<void, AppMessageCode>> updateChatRoom(ChatRoom chatRoom) async {
    switch (await _chatDataSource.updateChatRoom(chatRoom)) {
      case final ResultOk<ChatRoom, AppMessageCode> success:
        final newChatRoomList = _cacheDataSource.get()
          ?..updateFirstWhere(
            where: (chatRoom) => chatRoom.id == success.value.id,
            value: success.value,
          );
        if (newChatRoomList != null) {
          _cacheDataSource.save(newChatRoomList);
        }
        return const ResultOk(value: null);
      case ResultNg<ChatRoom, AppMessageCode>(:final value):
        return ResultNg(value: value);
    }
  }

  @override
  void clearCache() => _cacheDataSource.delete();
}
