import 'package:dio/dio.dart' hide Headers;
import 'package:koshiba_agent_app/core/themes/app_env.dart';
import 'package:koshiba_agent_app/data/data_sources/api_interceptor/logger_interceptor.dart';
import 'package:koshiba_agent_app/data/data_sources/api_interceptor/response_handle_interceptor.dart';
import 'package:koshiba_agent_app/data/data_sources/api_interceptor/token_interceptor.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';
import 'package:koshiba_agent_app/logic/models/calendar/calendar_event.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_authorization_url_dto.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/connect_to_google/connect_to_google_status.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_create_request_dto.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_update_request_dto.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod/riverpod.dart';

part 'api_data_source.g.dart';

final apiDataSourceProvider = Provider((ref) {
  final dio = Dio(BaseOptions())
    ..options.baseUrl = AppEnv.apiUrl
    ..interceptors.addAll([
      LoggerInterceptor(),
      TokenInterceptor(),
      ResponseHandleInterceptor(),
    ]);
  return ApiDataSource(baseUrl: AppEnv.apiUrl, dio);
});

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
  Future<ApiResponse<Meeting>> registerMeeting(
    @Body() MeetingCreateRequestDto dto,
  );

  @GET('/meetings')
  @Headers(_headerMap)
  Future<ApiResponse<List<Meeting>>> getMeetingList({
    @Query('id') String? meetingId,
    @Query('epoch_ms') int? epochMs,
    @Query('page_size') int? pageSize,
  });

  @GET('/meetings/{meetingId}')
  @Headers(_headerMap)
  Future<ApiResponse<Meeting>> getMeeting(@Path('meetingId') String meetingId);

  @DELETE('/meetings/{meetingId}')
  @Headers(_headerMap)
  Future<ApiResponse<void>> deleteMeeting(@Path('meetingId') String meetingId);

  @PUT('/meetings/{meetingId}')
  @Headers(_headerMap)
  Future<ApiResponse<Meeting>> updateMeeting(
    @Path('meetingId') String meetingId,
    @Body() MeetingUpdateRequestDto dto,
  );

  @GET('/connects/google')
  @Headers(_headerMap)
  Future<ApiResponse<ConnectToGoogleStatus>> getGoogleConnectStatus();

  @GET('/connects/google/auth-url')
  @Headers(_headerMap)
  Future<ApiResponse<ConnectToGoogleAuthorizationUrlDto>>
  getAuthUrlForGoogleConnect({@Query('from_url') required String fromUri});

  @POST('/connects/google')
  @Headers(_headerMap)
  Future<ApiResponse<void>> saveGoogleCredential(
    @Body() ConnectToGoogleRequestDto dto,
  );

  @DELETE('/connects/google')
  @Headers(_headerMap)
  Future<ApiResponse<void>> deleteGoogleCredential();

  @GET('/calendars')
  @Headers(_headerMap)
  Future<ApiResponse<List<CalendarEvent>>> getCalendarList();
}
