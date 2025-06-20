import 'package:koshiba_agent_app/logic/models/transcription/transcription_item.dart';

abstract interface class TranscriptionRepositoryInterface {
  Stream<List<TranscriptionItem>> fetchByMeetingId(String meetingId);
}
