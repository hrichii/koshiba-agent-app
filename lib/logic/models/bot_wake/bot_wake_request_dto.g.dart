// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_wake_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BotWakeRequestDto _$BotWakeRequestDtoFromJson(Map<String, dynamic> json) =>
    _BotWakeRequestDto(
      state: $enumDecode(_$BotWakeStatusEnumMap, json['state']),
    );

Map<String, dynamic> _$BotWakeRequestDtoToJson(_BotWakeRequestDto instance) =>
    <String, dynamic>{'state': _$BotWakeStatusEnumMap[instance.state]!};

const _$BotWakeStatusEnumMap = {
  BotWakeStatus.idle: 'IDLE',
  BotWakeStatus.active: 'ACTIVE',
};
