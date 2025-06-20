import 'package:koshiba_agent_app/data/repositories/transcription_repository.dart';
import 'package:koshiba_agent_app/logic/models/transcription/transcription_item.dart';
import 'package:koshiba_agent_app/logic/usecases/transcription/transcription_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transcription_use_case.g.dart';

@riverpod
class TranscriptionUseCase extends _$TranscriptionUseCase {
  TranscriptionRepositoryInterface get _transcriptionRepository =>
      ref.read(transcriptionRepositoryRepositoryProvider);

  @override
  Stream<List<TranscriptionItem>> build(String meetingId) =>
      _transcriptionRepository.fetchByMeetingId(meetingId);
}
