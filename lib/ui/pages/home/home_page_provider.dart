import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/data/repositories/meeting_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

// 会議リストの状態を管理するプロバイダー
final meetingListProvider =
    StateNotifierProvider<MeetingListNotifier, AsyncValue<List<Meeting>>>(
        (ref) {
  final repository = ref.read(meetingRepositoryProvider);
  return MeetingListNotifier(repository: repository);
});

class MeetingListNotifier extends StateNotifier<AsyncValue<List<Meeting>>> {
  MeetingListNotifier({required this.repository})
      : super(const AsyncValue.loading()) {
    // 初期化時に会議リストを読み込む
    fetchMeetingList();
  }

  final MeetingRepository repository;

  // 会議リストを取得する
  Future<void> fetchMeetingList() async {
    state = const AsyncValue.loading();

    final result = await repository.getMeetingList();

    switch (result) {
      case ResultOk<List<Meeting>, AppMessageCode>(:final value):
        state = AsyncValue.data(value);
      case ResultNg<List<Meeting>, AppMessageCode>(:final value):
        state =
            AsyncValue.error('エラーが発生しました。エラーコード: $value', StackTrace.current);
    }
  }

  // 会議リストを更新する（PullToRefresh用）
  Future<void> refreshMeetingList() async {
    // 現在のデータを保持しながら再読み込み
    state = const AsyncValue.loading();

    final result = await repository.getMeetingList();

    switch (result) {
      case ResultOk<List<Meeting>, AppMessageCode>(:final value):
        state = AsyncValue.data(value);
      case ResultNg<List<Meeting>, AppMessageCode>(:final value):
        state =
            AsyncValue.error('エラーが発生しました。エラーコード: $value', StackTrace.current);
    }
  }

  // 会議を削除する
  Future<bool> deleteMeeting(String meetingId) async {
    // 現在の状態を取得
    final currentState = state;
    if (currentState is! AsyncData<List<Meeting>>) {
      return false;
    }

    final result = await repository.deleteMeeting(meetingId: meetingId);

    switch (result) {
      case ResultOk<void, AppMessageCode>():
        // 削除が成功したら、リストから該当会議を削除して状態を更新
        final updatedList = currentState.value
            .where((meeting) => meeting.id != meetingId)
            .toList();
        state = AsyncValue.data(updatedList);
        return true;
      case ResultNg<void, AppMessageCode>():
        // エラーの場合は状態を変更せず失敗を返す
        return false;
    }
  }
}
