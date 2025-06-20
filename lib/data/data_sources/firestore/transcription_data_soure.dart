import 'package:koshiba_agent_app/data/data_sources/firestore_util.dart';
import 'package:koshiba_agent_app/logic/models/transcription/transcription_item.dart';
import 'package:riverpod/riverpod.dart';

final transcriptionDataSourceProvider = Provider(
  (ref) => TranscriptionDataSoure(),
);

class TranscriptionDataSoure {
  final _collectionRef = FirestoreUtil.collectionFromEnum(
    CollectionEnum.transcription,
  );

  /// アカウントを取得する
  Stream<List<TranscriptionItem>> fetchByMeetingId(String meetingId) =>
      _collectionRef
          .where('meetingId', isEqualTo: meetingId)
          .orderBy('timestamp')
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map((doc) => TranscriptionItem.fromFirestore(doc))
                .toList(),
          );
}
