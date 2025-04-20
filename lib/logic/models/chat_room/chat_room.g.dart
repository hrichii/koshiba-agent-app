// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) => _ChatRoom(
      id: json['id'] as String,
      title: json['title'] as String,
      chatList: (json['chatList'] as List<dynamic>)
          .map((e) => Chat.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ChatRoomToJson(_ChatRoom instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'chatList': instance.chatList,
      'createdAt': instance.createdAt.toIso8601String(),
    };
