import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';

part 'meeting_bot_status.freezed.dart';
part 'meeting_bot_status.g.dart';

enum BotStatusLevel {
  @JsonValue('ready')
  ready,
  @JsonValue('active')
  active,
  @JsonValue('completed')
  completed,
  @JsonValue('failed')
  failed,
}

enum BotStatusCode {
  @JsonValue('initialized')
  initialized,
  @JsonValue('joining_call')
  joiningCall,
  @JsonValue('in_waiting_room')
  inWaitingRoom,
  @JsonValue('in_call_not_recording')
  inCallNotRecording,
  @JsonValue('in_call_recording')
  inCallRecording,
  @JsonValue('recording_paused')
  recordingPaused,
  @JsonValue('recording_resumed')
  recordingResumed,
  @JsonValue('call_ended')
  callEnded,
  @JsonValue('bot_rejected')
  botRejected,
  @JsonValue('bot_removed')
  botRemoved,
  @JsonValue('waiting_room_timeout')
  waitingRoomTimeout,
  @JsonValue('invalid_meeting_url')
  invalidMeetingUrl,
  @JsonValue('meeting_error')
  meetingError,
  @JsonValue('unknown_error')
  unknownError,
  @JsonValue('cannot_join_meeting')
  cannotJoinMeeting,
  @JsonValue('timeout_waiting_to_start')
  timeoutWaitingToStart,
  @JsonValue('bot_not_accepted')
  botNotAccepted,
  @JsonValue('internal_error')
  internalError,
  @JsonValue('no_attendees')
  noAttendees,
  @JsonValue('no_speaker')
  noSpeaker,
  @JsonValue('recording_timeout')
  recordingTimeout,
  @JsonValue('api_request')
  apiRequest;

  String get message => switch (this) {
        BotStatusCode.initialized =>
          AppMessage.current.info_api_bot_status_message_initialized,
        BotStatusCode.joiningCall =>
          AppMessage.current.info_api_bot_status_message_joining_call,
        BotStatusCode.inWaitingRoom =>
          AppMessage.current.info_api_bot_status_message_in_waiting_room,
        BotStatusCode.inCallNotRecording =>
          AppMessage.current.info_api_bot_status_message_in_call_not_recording,
        BotStatusCode.inCallRecording =>
          AppMessage.current.info_api_bot_status_message_in_call_recording,
        BotStatusCode.recordingPaused =>
          AppMessage.current.info_api_bot_status_message_recording_paused,
        BotStatusCode.recordingResumed =>
          AppMessage.current.info_api_bot_status_message_recording_resumed,
        BotStatusCode.callEnded =>
          AppMessage.current.info_api_bot_status_message_call_ended,
        BotStatusCode.botRejected =>
          AppMessage.current.info_api_bot_status_message_bot_rejected,
        BotStatusCode.botRemoved =>
          AppMessage.current.info_api_bot_status_message_bot_removed,
        BotStatusCode.waitingRoomTimeout =>
          AppMessage.current.info_api_bot_status_message_waiting_room_timeout,
        BotStatusCode.invalidMeetingUrl =>
          AppMessage.current.info_api_bot_status_message_invalid_meeting_url,
        BotStatusCode.meetingError =>
          AppMessage.current.info_api_bot_status_message_meeting_error,
        BotStatusCode.unknownError =>
          AppMessage.current.info_api_bot_status_message_unknown_error,
        BotStatusCode.cannotJoinMeeting =>
          AppMessage.current.info_api_bot_status_message_cannot_join_meeting,
        BotStatusCode.timeoutWaitingToStart => AppMessage
            .current.info_api_bot_status_message_timeout_waiting_to_start,
        BotStatusCode.botNotAccepted =>
          AppMessage.current.info_api_bot_status_message_bot_not_accepted,
        BotStatusCode.internalError =>
          AppMessage.current.info_api_bot_status_message_internal_error,
        BotStatusCode.noAttendees =>
          AppMessage.current.info_api_bot_status_message_no_attendees,
        BotStatusCode.noSpeaker =>
          AppMessage.current.info_api_bot_status_message_no_speaker,
        BotStatusCode.recordingTimeout =>
          AppMessage.current.info_api_bot_status_message_recording_timeout,
        BotStatusCode.apiRequest =>
          AppMessage.current.info_api_bot_status_message_api_request,
      };
}

@freezed
abstract class MeetingBotStatus with _$MeetingBotStatus {
  const factory MeetingBotStatus({
    required BotStatusLevel level,
    required BotStatusCode code,
  }) = _MeetingBotStatus;
  factory MeetingBotStatus.fromJson(Map<String, dynamic> json) =>
      _$MeetingBotStatusFromJson(json);

  const MeetingBotStatus._();

  // Convenience getters
  bool get isReady => level == BotStatusLevel.ready;
  bool get isActive => level == BotStatusLevel.active;
  bool get isCompleted => level == BotStatusLevel.completed;
  bool get isFailed => level == BotStatusLevel.failed;
}
