import 'package:dio/dio.dart' hide Headers;
import 'package:koshiba_agent_app/core/themes/app_env.dart';
import 'package:koshiba_agent_app/data/data_sources/api_interceptor/logger_interceptor.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake.dart';
import 'package:koshiba_agent_app/logic/models/bot_wake/bot_wake_request_dto.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod/riverpod.dart';

part 'bot_api_data_source.g.dart';

final botApiDataSourceProvider = Provider((ref) {
  final dio = Dio(BaseOptions())
    ..options.baseUrl = AppEnv.botApiUrl
    ..interceptors.addAll([LoggerInterceptor()]);
  return BotApiDataSource(baseUrl: AppEnv.botApiUrl, dio);
});

@RestApi()
abstract class BotApiDataSource {
  factory BotApiDataSource(
    Dio dio, {
    required String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _BotApiDataSource;

  static const _headerMap = <String, String>{
    'accept': 'application/json',
    'content-type': 'application/json',
  };

  @GET('/api/state/{meetingId}')
  @Headers(_headerMap)
  Future<BotWake> getBotWakeStatus({
    @Path('meetingId') required String meetingId,
  });

  @POST('/api/state/{meetingId}')
  @Headers(_headerMap)
  Future<BotWake> setBotWakeStatus({
    @Path('meetingId') required String meetingId,
    @Body() required BotWakeRequestDto dto,
  });
}
