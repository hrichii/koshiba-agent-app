// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chat _$ChatFromJson(Map<String, dynamic> json) => _Chat(
      id: json['id'] as String,
      content: json['content'] as String,
      senderId: $enumDecode(_$SenderTypeEnumMap, json['senderId']),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ChatToJson(_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'senderId': _$SenderTypeEnumMap[instance.senderId]!,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$SenderTypeEnumMap = {
  SenderType.me: 'me',
  SenderType.assistant: 'assistant',
};
