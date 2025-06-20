import 'package:koshiba_agent_app/data/data_sources/api_data_source.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule_response_dto.dart';
import 'package:koshiba_agent_app/logic/usecases/schedule/schedule_repository_interface.dart';
import 'package:riverpod/riverpod.dart';

final scheduleRepositoryProvider = Provider(
  (ref) => ScheduleRepository(apiDataSource: ref.read(apiDataSourceProvider)),
);

class ScheduleRepository implements ScheduleRepositoryInterface {
  ScheduleRepository({required ApiDataSource apiDataSource})
    : _apiDataSource = apiDataSource;

  final ApiDataSource _apiDataSource;
  final int _pageSize = 20;

  @override
  Future<Result<ScheduleResponseDto, AppMessageCode>>
  fetchScheduleListAtInitial({required DateTime? timeBase}) async {
    final response = await _apiDataSource.getScheduleList(pageSize: _pageSize);
    switch (response) {
      case ApiResponseOk(:final data):
        return ResultOk(value: data);
      case ApiResponseNg():
        return ResultNg(value: response.messageCode);
    }
  }

  @override
  Future<Result<ScheduleResponseDto, AppMessageCode>> fetchScheduleListForNext({
    required String pageToken,
  }) async {
    final response = await _apiDataSource.getScheduleList(
      pageSize: _pageSize,
      nextPageToken: pageToken,
    );
    switch (response) {
      case ApiResponseOk(:final data):
        return ResultOk(value: data);
      case ApiResponseNg():
        return ResultNg(value: response.messageCode);
    }
  }

  @override
  Future<Result<ScheduleResponseDto, AppMessageCode>>
  fetchScheduleListForPrevoius({required String pageToken}) async {
    final response = await _apiDataSource.getScheduleList(
      pageSize: _pageSize,
      previousPageToken: pageToken,
    );
    switch (response) {
      case ApiResponseOk(:final data):
        return ResultOk(value: data);
      case ApiResponseNg():
        return ResultNg(value: response.messageCode);
    }
  }
}
