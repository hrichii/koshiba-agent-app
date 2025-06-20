import 'package:koshiba_agent_app/data/data_sources/firestore/transcription_data_soure.dart';
import 'package:koshiba_agent_app/logic/models/transcription/transcription_item.dart';
import 'package:koshiba_agent_app/logic/usecases/transcription/transcription_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final transcriptionRepositoryRepositoryProvider = Provider(
  (ref) => TranscriptionRepository(
    transcriptionDataSource: ref.read(transcriptionDataSourceProvider),
  ),
);

class TranscriptionRepository implements TranscriptionRepositoryInterface {
  TranscriptionRepository({
    required TranscriptionDataSoure transcriptionDataSource,
  }) : _transcriptionDataSource = transcriptionDataSource;

  final TranscriptionDataSoure _transcriptionDataSource;

  @override
  Stream<List<TranscriptionItem>> fetchByMeetingId(String meetingId) =>
      _transcriptionDataSource.fetchByMeetingId(meetingId);
}
