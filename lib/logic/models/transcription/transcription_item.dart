import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/models/transcription/transcription_role_enum.dart';
import 'package:koshiba_agent_app/logic/models/transcription/transcription_source_enum.dart';

part 'transcription_item.freezed.dart';
part 'transcription_item.g.dart';

@freezed
abstract class TranscriptionItem with _$TranscriptionItem {
  const factory TranscriptionItem({
    required String id,
    required String meetingId,
    required TranscriptionRoleEnum role,
    required DateTime timestamp,
    String? content,
    TranscriptionSourceEnum? source,
    String? errorCode,
  }) = _TranscriptionItem;

  const TranscriptionItem._();

  factory TranscriptionItem.fromJson(Map<String, dynamic> json) =>
      _$TranscriptionItemFromJson(json);

  factory TranscriptionItem.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final data = doc.data()!;
    data['id'] = doc.id;
    data['timestamp'] = (data['timestamp'] as Timestamp)
        .toDate()
        .toIso8601String();
    return TranscriptionItem.fromJson(data);
  }
}
