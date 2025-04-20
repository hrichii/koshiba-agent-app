import 'package:koshiba_agent_app/data/data_sources/api_data_source.dart';
import 'package:koshiba_agent_app/data/data_sources/cache_data_source.dart';
import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/core/extensions/list_ext.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

class ChatListRepository {
  ChatListRepository({
    required ApiDataSource apiDataSource,
    required ChatRoomListCacheDataSource cacheDataSource,
  })  : _apiDataSource = apiDataSource,
        _cacheDataSource = cacheDataSource;

  final ApiDataSource _apiDataSource;
  final ChatRoomListCacheDataSource _cacheDataSource;

  Future<Result<List<ChatRoom>, AppException>> getChatList() async {
    final result = await _apiDataSource.getChatRoomList();
    switch (result) {
      case final ResultSuccess<List<ChatRoom>, AppException> success:
        _cacheDataSource.save(success.value);
        return success;
      case final ResultFailure<List<ChatRoom>, AppException> failure:
        return failure;
    }
  }

  Future<Result<void, AppException>> addChatRoom(ChatRoom chatRoom) async {
    final result = await _apiDataSource.addChatRoom(chatRoom);
    switch (result) {
      case ResultSuccess<ChatRoom, AppException>(:final value):
        final newChatRoomList = _cacheDataSource.get()?..add(value);
        if (newChatRoomList != null) {
          _cacheDataSource.save(newChatRoomList);
        }
        return const ResultSuccess(value: null);
      case ResultFailure<ChatRoom, AppException>(:final value):
        return ResultFailure(value: value);
    }
  }

  Future<Result<void, AppException>> deleteChatRoom(String chatRoomId) async {
    final result = await _apiDataSource.deleteChatRoom(chatRoomId);
    switch (result) {
      case final ResultSuccess<void, AppException> success:
        final newChatRoomList = _cacheDataSource.get()
          ?..removeWhere((chatRoom) => chatRoom.id == chatRoomId);
        if (newChatRoomList != null) {
          _cacheDataSource.save(newChatRoomList);
        }
        return success;
      case ResultFailure<void, AppException>(:final value):
        return ResultFailure(value: value);
    }
  }

  Future<Result<void, AppException>> updateChatRoom(ChatRoom chatRoom) async {
    final result = await _apiDataSource.updateChatRoom(chatRoom);
    switch (result) {
      case final ResultSuccess<ChatRoom, AppException> success:
        final newChatRoomList = _cacheDataSource.get()
          ?..updateFirstWhere(
            where: (chatRoom) => chatRoom.id == success.value.id,
            value: success.value,
          );
        if (newChatRoomList != null) {
          _cacheDataSource.save(newChatRoomList);
        }
        return const ResultSuccess(value: null);
      case ResultFailure<ChatRoom, AppException>(:final value):
        return ResultFailure(value: value);
    }
  }

  void clearCache() => _cacheDataSource.delete();
}
