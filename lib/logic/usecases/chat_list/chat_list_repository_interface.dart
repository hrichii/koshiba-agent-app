import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/chat_room/chat_room.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

/// チャットルーム一覧の操作を定義するインターフェース
abstract interface class ChatListRepositoryInterface {
  /// チャットルームのリストを取得
  Future<Result<List<ChatRoom>, AppMessageCode>> getChatRoomList();

  /// チャットルームを追加
  Future<Result<void, AppMessageCode>> addChatRoom(ChatRoom chatRoom);

  /// チャットルームを削除
  Future<Result<void, AppMessageCode>> deleteChatRoom(String chatRoomId);

  /// チャットルームを更新
  Future<Result<void, AppMessageCode>> updateChatRoom(ChatRoom chatRoom);

  /// キャッシュをクリア
  void clearCache();
}
