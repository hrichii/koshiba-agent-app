// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_bot_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeetingBotStatus _$MeetingBotStatusFromJson(Map<String, dynamic> json) =>
    _MeetingBotStatus(
      level: $enumDecode(_$BotStatusLevelEnumMap, json['level']),
      code: $enumDecode(_$BotStatusCodeEnumMap, json['code']),
    );

Map<String, dynamic> _$MeetingBotStatusToJson(_MeetingBotStatus instance) =>
    <String, dynamic>{
      'level': _$BotStatusLevelEnumMap[instance.level]!,
      'code': _$BotStatusCodeEnumMap[instance.code]!,
    };

const _$BotStatusLevelEnumMap = {
  BotStatusLevel.ready: 'ready',
  BotStatusLevel.active: 'active',
  BotStatusLevel.completed: 'completed',
  BotStatusLevel.failed: 'failed',
};

const _$BotStatusCodeEnumMap = {
  BotStatusCode.initialized: 'initialized',
  BotStatusCode.joiningCall: 'joining_call',
  BotStatusCode.inWaitingRoom: 'in_waiting_room',
  BotStatusCode.inCallNotRecording: 'in_call_not_recording',
  BotStatusCode.inCallRecording: 'in_call_recording',
  BotStatusCode.recordingPaused: 'recording_paused',
  BotStatusCode.recordingResumed: 'recording_resumed',
  BotStatusCode.callEnded: 'call_ended',
  BotStatusCode.botRejected: 'bot_rejected',
  BotStatusCode.botRemoved: 'bot_removed',
  BotStatusCode.waitingRoomTimeout: 'waiting_room_timeout',
  BotStatusCode.invalidMeetingUrl: 'invalid_meeting_url',
  BotStatusCode.meetingError: 'meeting_error',
  BotStatusCode.unknownError: 'unknown_error',
  BotStatusCode.cannotJoinMeeting: 'cannot_join_meeting',
  BotStatusCode.timeoutWaitingToStart: 'timeout_waiting_to_start',
  BotStatusCode.botNotAccepted: 'bot_not_accepted',
  BotStatusCode.internalError: 'internal_error',
};
