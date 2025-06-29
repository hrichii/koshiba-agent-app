// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcription_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TranscriptionItem _$TranscriptionItemFromJson(Map<String, dynamic> json) =>
    _TranscriptionItem(
      id: json['id'] as String,
      meetingId: json['meetingId'] as String,
      role: $enumDecode(_$TranscriptionRoleEnumEnumMap, json['role']),
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      content: json['content'] as String?,
      source: $enumDecodeNullable(
        _$TranscriptionSourceEnumEnumMap,
        json['source'],
      ),
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$TranscriptionItemToJson(_TranscriptionItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meetingId': instance.meetingId,
      'role': _$TranscriptionRoleEnumEnumMap[instance.role]!,
      'timestamp': instance.timestamp?.toIso8601String(),
      'content': instance.content,
      'source': _$TranscriptionSourceEnumEnumMap[instance.source],
      'errorCode': instance.errorCode,
    };

const _$TranscriptionRoleEnumEnumMap = {
  TranscriptionRoleEnum.user: 'user',
  TranscriptionRoleEnum.assistant: 'assistant',
  TranscriptionRoleEnum.chat: 'chat',
};

const _$TranscriptionSourceEnumEnumMap = {
  TranscriptionSourceEnum.chat: 'chat',
  TranscriptionSourceEnum.voice: 'voice',
};
