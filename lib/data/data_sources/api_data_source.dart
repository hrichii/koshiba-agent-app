import 'package:dio/dio.dart' hide Headers;
import 'package:koshiba_agent_app/core/constants/app_env.dart';
import 'package:koshiba_agent_app/data/data_sources/api_interceptor/logger_interceptor.dart';
import 'package:koshiba_agent_app/data/data_sources/api_interceptor/response_handle_interceptor.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod/riverpod.dart';

part 'api_data_source.g.dart';

final apiDataSourceProvider = Provider(
  (ref) {
    final dio = Dio(BaseOptions())
      ..options.baseUrl = AppEnv.apiUrl
      ..interceptors.addAll([
        LoggerInterceptor(),
        ResponseHandleInterceptor(),
      ]);
    return ApiDataSource(
      baseUrl: AppEnv.apiUrl,
      dio,
    );
  },
);

@RestApi()
abstract class ApiDataSource {
  factory ApiDataSource(
    Dio dio, {
    required String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ApiDataSource;
  static const _headerMap = <String, String>{
    'accept': 'application/json',
    'content-type': 'application/json',
  };

  @POST('/meetings')
  @Headers(_headerMap)
  Future<ApiResponse<Meeting>> registerMeeting();
}
