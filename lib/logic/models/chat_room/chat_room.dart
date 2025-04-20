import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/models/chat/chat.dart';

part 'chat_room.freezed.dart';
part 'chat_room.g.dart';

@freezed
abstract class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    // TODO IDをextension typeにする
    required String id,
    required String title,
    required List<Chat> chatList,
    required DateTime createdAt,
  }) = _ChatRoom;

  const ChatRoom._();

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json);
}
