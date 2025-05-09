import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

/// チャットルーム一覧の操作を定義するインターフェース
abstract interface class ChatListRepositoryInterface {
  /// チャットルームのリストを取得
  Future<Result<List<ChatRoom>, AppException>> getChatRoomList();

  /// チャットルームを追加
  Future<Result<void, AppException>> addChatRoom(ChatRoom chatRoom);

  /// チャットルームを削除
  Future<Result<void, AppException>> deleteChatRoom(String chatRoomId);

  /// チャットルームを更新
  Future<Result<void, AppException>> updateChatRoom(ChatRoom chatRoom);

  /// キャッシュをクリア
  void clearCache();
}
