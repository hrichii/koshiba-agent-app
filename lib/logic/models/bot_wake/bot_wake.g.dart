// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_wake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BotWake _$BotWakeFromJson(Map<String, dynamic> json) => _BotWake(
  meetingId: json['client_id'] as String?,
  state: $enumDecodeNullable(_$BotWakeStatusEnumMap, json['state']),
  oldState: $enumDecodeNullable(_$BotWakeStatusEnumMap, json['old_state']),
  newState: $enumDecodeNullable(_$BotWakeStatusEnumMap, json['new_state']),
);

Map<String, dynamic> _$BotWakeToJson(_BotWake instance) => <String, dynamic>{
  'client_id': instance.meetingId,
  'state': _$BotWakeStatusEnumMap[instance.state],
  'old_state': _$BotWakeStatusEnumMap[instance.oldState],
  'new_state': _$BotWakeStatusEnumMap[instance.newState],
};

const _$BotWakeStatusEnumMap = {
  BotWakeStatus.idle: 'IDLE',
  BotWakeStatus.active: 'ACTIVE',
};
