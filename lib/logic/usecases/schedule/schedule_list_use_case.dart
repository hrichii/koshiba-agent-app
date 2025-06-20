import 'package:koshiba_agent_app/data/repositories/schedule_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule.dart';
import 'package:koshiba_agent_app/logic/usecases/schedule/schedule_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'schedule_list_use_case.g.dart';

class ScheduleListState {
  // 通常の初期化用ファクトリーコンストラクタ
  factory ScheduleListState({
    required List<Schedule> data,
    String? nextPageToken,
    String? previousPageToken,
    bool loadingInitial = false,
    bool loadingNext = false,
    bool loadingPrevious = false,
  }) => ScheduleListState._(
    data: data,
    nextPageToken: nextPageToken,
    previousPageToken: previousPageToken,
    loadingInitial: loadingInitial,
    loadingNext: loadingNext,
    loadingPrevious: loadingPrevious,
    requestId: DateTime.now().millisecondsSinceEpoch.toString(),
  );
  const ScheduleListState._({
    required this.data,
    this.nextPageToken,
    this.previousPageToken,
    this.loadingInitial = false,
    this.loadingNext = false,
    this.loadingPrevious = false,
    this.requestId = '',
  });

  // リフレッシュ用ファクトリーコンストラクタ
  factory ScheduleListState.refresh() => ScheduleListState._(
    data: const [],
    requestId: DateTime.now().millisecondsSinceEpoch.toString(),
  );

  final List<Schedule> data;
  final String? nextPageToken;
  final String? previousPageToken;
  final bool loadingInitial;
  final bool loadingNext;
  final bool loadingPrevious;
  final String requestId;

  ScheduleListState copyWith({
    List<Schedule> Function()? data,
    String? Function()? nextPageToken,
    String? Function()? previousPageToken,
    bool Function()? loadingInitial,
    bool Function()? loadingNext,
    bool Function()? loadingPrevious,
  }) => ScheduleListState._(
    data: data == null ? this.data : data(),
    nextPageToken: nextPageToken == null ? this.nextPageToken : nextPageToken(),
    previousPageToken: previousPageToken == null
        ? this.previousPageToken
        : previousPageToken(),
    loadingInitial: loadingInitial == null
        ? this.loadingInitial
        : loadingInitial(),
    loadingNext: loadingNext == null ? this.loadingNext : loadingNext(),
    loadingPrevious: loadingPrevious == null
        ? this.loadingPrevious
        : loadingPrevious(),
    requestId: requestId,
  );
}

@riverpod
class ScheduleListUseCase extends _$ScheduleListUseCase {
  ScheduleRepositoryInterface get _repository =>
      ref.read(scheduleRepositoryProvider);

  bool get canFetchPrevious =>
      !state.loadingInitial &&
      !state.loadingPrevious &&
      state.previousPageToken != null;

  bool get canFetchNext =>
      !state.loadingInitial &&
      !state.loadingNext &&
      state.nextPageToken != null;

  @override
  ScheduleListState build() => ScheduleListState(data: const []);

  // 初期読み込み
  Future<Result<void, AppMessageCode>> refresh() async {
    state = ScheduleListState.refresh();
    final requestId = state.requestId;

    state = state.copyWith(loadingInitial: () => true);

    final result = await _repository.fetchScheduleListAtInitial(timeBase: null);

    // リクエストIDが変わっていたら処理をスキップ
    if (state.requestId != requestId) {
      return const ResultOk(value: null);
    }

    switch (result) {
      case ResultOk(:final value):
        state = state.copyWith(
          data: () => value.data,
          nextPageToken: () => value.nextPageToken,
          previousPageToken: () => value.previousPageToken,
          loadingInitial: () => false,
        );
        return const ResultOk(value: null);
      case ResultNg(:final value):
        state = state.copyWith(loadingInitial: () => false);
        return ResultNg(value: value);
    }
  }

  // 次ページ読み込み
  Future<Result<void, AppMessageCode>> fetchNext() async {
    if (!canFetchNext) {
      return const ResultOk(value: null);
    }

    final currentRequestId = state.requestId;
    state = state.copyWith(loadingNext: () => true);

    final result = await _repository.fetchScheduleListForNext(
      pageToken: state.nextPageToken!,
    );

    // リクエストIDが変わっていたら処理をスキップ
    if (state.requestId != currentRequestId) {
      return const ResultOk(value: null);
    }

    switch (result) {
      case ResultOk(:final value):
        final newData = [...state.data, ...value.data];
        state = state.copyWith(
          data: () => newData,
          nextPageToken: () => value.nextPageToken,
          loadingNext: () => false,
        );
        return const ResultOk(value: null);
      case ResultNg(:final value):
        state = state.copyWith(loadingNext: () => false);
        return ResultNg(value: value);
    }
  }

  // 前ページ読み込み
  Future<Result<void, AppMessageCode>> fetchPrevious() async {
    if (!canFetchPrevious) {
      return const ResultOk(value: null);
    }

    final currentRequestId = state.requestId;
    state = state.copyWith(loadingPrevious: () => true);

    final result = await _repository.fetchScheduleListForPrevoius(
      pageToken: state.previousPageToken!,
    );

    // リクエストIDが変わっていたら処理をスキップ
    if (state.requestId != currentRequestId) {
      return const ResultOk(value: null);
    }

    switch (result) {
      case ResultOk(:final value):
        final newData = [...value.data, ...state.data];
        state = state.copyWith(
          data: () => newData,
          previousPageToken: () => value.previousPageToken,
          loadingPrevious: () => false,
        );
        return const ResultOk(value: null);
      case ResultNg(:final value):
        state = state.copyWith(loadingPrevious: () => false);
        return ResultNg(value: value);
    }
  }
}
