import 'package:koshiba_agent_app/data/repositories/schedule_repository.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule.dart';
import 'package:koshiba_agent_app/logic/usecases/schedule/schedule_repository_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'schedule_list_use_case.g.dart';

class ScheduleListState {
  const ScheduleListState({
    required this.data,
    this.nextPageToken,
    this.previousPageToken,
    this.loadingInitial = false,
    this.loadingNext = false,
    this.loadingPrevious = false,
  });
  final List<Schedule> data;
  final String? nextPageToken;
  final String? previousPageToken;
  final bool loadingInitial;
  final bool loadingNext;
  final bool loadingPrevious;

  ScheduleListState copyWith({
    List<Schedule>? data,
    String? nextPageToken,
    String? previousPageToken,
    bool? loadingInitial,
    bool? loadingNext,
    bool? loadingPrevious,
  }) => ScheduleListState(
    data: data ?? this.data,
    nextPageToken: nextPageToken ?? this.nextPageToken,
    previousPageToken: previousPageToken ?? this.previousPageToken,
    loadingInitial: loadingInitial ?? this.loadingInitial,
    loadingNext: loadingNext ?? this.loadingNext,
    loadingPrevious: loadingPrevious ?? this.loadingPrevious,
  );
}

@riverpod
class ScheduleListUseCase extends _$ScheduleListUseCase {
  ScheduleRepositoryInterface get _repository =>
      ref.read(scheduleRepositoryProvider);

  @override
  ScheduleListState build() => const ScheduleListState(data: []);

  // 初期読み込み
  Future<Result<void, AppMessageCode>> getInitialScheduleList() async {
    if (state.loadingInitial) {
      return const ResultOk(value: null);
    }

    state = state.copyWith(loadingInitial: true);

    final result = await _repository.fetchScheduleListAtInitial(timeBase: null);

    switch (result) {
      case ResultOk(:final value):
        state = state.copyWith(
          data: value.data,
          nextPageToken: value.nextPageToken,
          previousPageToken: value.previousPageToken,
          loadingInitial: false,
        );
        return const ResultOk(value: null);
      case ResultNg(:final value):
        state = state.copyWith(loadingInitial: false);
        return ResultNg(value: value);
    }
  }

  // 次ページ読み込み
  Future<Result<void, AppMessageCode>> loadNextPage() async {
    if (state.loadingInitial ||
        state.loadingNext ||
        state.nextPageToken == null) {
      return const ResultOk(value: null);
    }

    state = state.copyWith(loadingNext: true);

    final result = await _repository.fetchScheduleListForNext(
      pageToken: state.nextPageToken!,
    );

    switch (result) {
      case ResultOk(:final value):
        final newData = [...state.data, ...value.data];
        state = state.copyWith(
          data: newData,
          nextPageToken: value.nextPageToken,
          previousPageToken: value.previousPageToken,
          loadingNext: false,
        );
        return const ResultOk(value: null);
      case ResultNg(:final value):
        state = state.copyWith(loadingNext: false);
        return ResultNg(value: value);
    }
  }

  // 前ページ読み込み
  Future<Result<void, AppMessageCode>> loadPreviousPage() async {
    if (state.loadingInitial ||
        state.loadingPrevious ||
        state.previousPageToken == null) {
      return const ResultOk(value: null);
    }

    state = state.copyWith(loadingPrevious: true);

    final result = await _repository.fetchScheduleListForPrevoius(
      pageToken: state.previousPageToken!,
    );

    switch (result) {
      case ResultOk(:final value):
        final newData = [...value.data, ...state.data];
        state = state.copyWith(
          data: newData,
          nextPageToken: value.nextPageToken,
          previousPageToken: value.previousPageToken,
          loadingPrevious: false,
        );
        return const ResultOk(value: null);
      case ResultNg(:final value):
        state = state.copyWith(loadingPrevious: false);
        return ResultNg(value: value);
    }
  }
}
