abstract interface class ChatListRepositoryInterface {
  /// チャットルームのリストを取得
  Future<List<String>> getChatRoomList();

  /// チャットルームのリストを保存
  Future<void> saveChatRoomList(List<String> chatRoomList);

  /// キャッシュをクリア
  Future<void> clearCache();
}
