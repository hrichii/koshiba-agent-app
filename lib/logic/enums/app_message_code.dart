import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/themes/app_env.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';

part 'app_message_code.freezed.dart';
part 'app_message_code.g.dart';

@Freezed(unionKey: 'code')
sealed class AppMessageCode with _$AppMessageCode {
  // Infoコード
  const factory AppMessageCode.infoApiRequestSuccess({String? message}) =
      _InfoApiRequestSuccess;
  const factory AppMessageCode.infoGoogleSignInCanceled({String? message}) =
      _InfoGoogleSignInCanceled;

  // Errorコード
  const factory AppMessageCode.errorApiAuthenticationInvalid({
    String? message,
  }) = _ErrorApiAuthenticationInvalid;
  const factory AppMessageCode.errorApiTokenExpired({String? message}) =
      _ErrorApiTokenExpired;
  const factory AppMessageCode.errorApiAccountNotFound({String? message}) =
      _ErrorApiAccountNotFound;
  const factory AppMessageCode.errorApiOperationNotAllowed({String? message}) =
      _ErrorApiOperationNotAllowed;

  const factory AppMessageCode.errorApiInvalidEmail({String? message}) =
      _ErrorApiInvalidEmail;
  const factory AppMessageCode.errorApiEmailAlreadyUsed({String? message}) =
      _ErrorApiEmailAlreadyUsed;
  const factory AppMessageCode.errorApiWeakPassword({String? message}) =
      _ErrorApiWeakPassword;

  const factory AppMessageCode.errorApiUnexpectedResponse({String? message}) =
      _ErrorApiUnexpectedResponse;
  const factory AppMessageCode.errorApiNetworkRequestFailed({String? message}) =
      _ErrorApiNetworkRequestFailed;
  const factory AppMessageCode.errorApiTooManyRequests({String? message}) =
      _ErrorApiTooManyRequests;
  const factory AppMessageCode.errorApiBadRequest({String? message}) =
      _ErrorApiBadRequest;
  const factory AppMessageCode.errorApiNotFound({String? message}) =
      _ErrorApiNotFound;
  const factory AppMessageCode.errorApiResourceAlreadyExists({
    String? message,
  }) = _ErrorApiResourceAlreadyExists;
  const factory AppMessageCode.errorApiResourceUnauthorized({String? message}) =
      _ErrorApiResourceUnauthorized;

  const factory AppMessageCode.errorApiServerIssue({String? message}) =
      _ErrorApiServerIssue;
  const factory AppMessageCode.errorApiBotOperationIssue({String? message}) =
      _ErrorApiBotOperationIssue;
  const factory AppMessageCode.errorApiBotStartTimePast({String? message}) =
      _ErrorApiBotStartTimePast;

  // Dioエラー
  const factory AppMessageCode.errorClientUnknown({String? message}) =
      _ErrorClientUnknown;
  const factory AppMessageCode.errorClientUnexpectedResponse({
    String? message,
  }) = _ErrorClientUnexpectedResponse;

  const factory AppMessageCode.errorClientDioTimeout({String? message}) =
      _ErrorClientDioTimeout;
  const factory AppMessageCode.errorClientDioCancel({String? message}) =
      _ErrorClientDioCancel;
  const factory AppMessageCode.errorClientDioConnection({String? message}) =
      _ErrorClientDioConnection;

  // ステータスコード
  const factory AppMessageCode.errorClientStatusCode2XX({String? message}) =
      _ErrorClientStatusCode2XX;
  const factory AppMessageCode.errorClientStatusCode4XX({String? message}) =
      _ErrorClientStatusCode4XX;
  const factory AppMessageCode.errorClientStatusCode401({String? message}) =
      _ErrorClientStatusCode401;
  const factory AppMessageCode.errorClientStatusCode407({String? message}) =
      _ErrorClientStatusCode407;
  const factory AppMessageCode.errorClientStatusCode408({String? message}) =
      _ErrorClientStatusCode408;
  const factory AppMessageCode.errorClientStatusCode409({String? message}) =
      _ErrorClientStatusCode409;
  const factory AppMessageCode.errorClientStatusCode413({String? message}) =
      _ErrorClientStatusCode413;
  const factory AppMessageCode.errorClientStatusCode414({String? message}) =
      _ErrorClientStatusCode414;
  const factory AppMessageCode.errorClientStatusCode429({String? message}) =
      _ErrorClientStatusCode429;
  const factory AppMessageCode.errorClientStatusCode5XX({String? message}) =
      _ErrorClientStatusCode5XX;
  const factory AppMessageCode.errorClientStatusCode504({String? message}) =
      _ErrorClientStatusCode504;

  // Google認証エラー
  const factory AppMessageCode.errorClientGooleNotYetAuthenticated({
    String? message,
  }) = _ErrorClientGooleNotYetAuthenticated;
  const factory AppMessageCode.errorClientGooleAuthentication({
    String? message,
  }) = _ErrorClientGooleAuthentication;

  // Webは対応していない
  const factory AppMessageCode.errorClientWebNotSupported({String? message}) =
      _ErrorClientWebNotSupported;
  // Mobileは対応していない
  const factory AppMessageCode.errorClientMobileNotSupported({
    String? message,
  }) = _ErrorClientMobileNotSupported;

  factory AppMessageCode.fromJson(Map<String, dynamic> json) =>
      _$AppMessageCodeFromJson(json);

  factory AppMessageCode.fromDioExceptionType(
    DioExceptionType dioExceptionType,
  ) => switch (dioExceptionType) {
    DioExceptionType.connectionTimeout =>
      const AppMessageCode.errorClientDioTimeout(),
    DioExceptionType.sendTimeout =>
      const AppMessageCode.errorClientDioTimeout(),
    DioExceptionType.receiveTimeout =>
      const AppMessageCode.errorClientDioTimeout(),
    DioExceptionType.badCertificate =>
      const AppMessageCode.errorClientDioConnection(),
    DioExceptionType.badResponse =>
      const AppMessageCode.errorClientUnexpectedResponse(),
    DioExceptionType.cancel => const AppMessageCode.errorClientDioCancel(),
    DioExceptionType.connectionError =>
      const AppMessageCode.errorClientDioConnection(),
    DioExceptionType.unknown => const AppMessageCode.errorClientUnknown(),
  };

  factory AppMessageCode.fromStatusCode({
    required int statusCode,
    String? message,
  }) {
    if (statusCode >= 200 && statusCode < 300) {
      return AppMessageCode.errorClientStatusCode2XX(message: message);
    }

    return switch (statusCode) {
      401 => AppMessageCode.errorClientStatusCode401(message: message),
      407 => AppMessageCode.errorClientStatusCode407(message: message),
      408 => AppMessageCode.errorClientStatusCode408(message: message),
      409 => AppMessageCode.errorClientStatusCode409(message: message),
      413 => AppMessageCode.errorClientStatusCode413(message: message),
      414 => AppMessageCode.errorClientStatusCode414(message: message),
      429 => AppMessageCode.errorClientStatusCode429(message: message),
      504 => AppMessageCode.errorClientStatusCode504(message: message),
      >= 400 && < 500 => AppMessageCode.errorClientStatusCode4XX(
        message: message,
      ),
      >= 500 => AppMessageCode.errorClientStatusCode5XX(message: message),
      _ => AppMessageCode.errorClientUnexpectedResponse(message: message),
    };
  }
}

extension AppMessageCodeExtension on AppMessageCode {
  String get localizedMessage =>
      _localizedMessage + (AppEnv.env == 'dev' ? ' [Debug]$message' : '');

  String get _localizedMessage => switch (this) {
    _InfoApiRequestSuccess() => AppMessage.current.info_api_request_success,
    _InfoGoogleSignInCanceled() =>
      AppMessage.current.info_google_sign_in_canceled,
    _ErrorApiAuthenticationInvalid() =>
      AppMessage.current.error_api_authentication_invalid,
    _ErrorApiTokenExpired() => AppMessage.current.error_api_token_expired,
    _ErrorApiAccountNotFound() =>
      AppMessage.current.error_api_account_not_found,
    _ErrorApiOperationNotAllowed() =>
      AppMessage.current.error_api_operation_not_allowed,
    _ErrorApiInvalidEmail() => AppMessage.current.error_api_invalid_email,
    _ErrorApiEmailAlreadyUsed() =>
      AppMessage.current.error_api_email_already_used,
    _ErrorApiWeakPassword() => AppMessage.current.error_api_weak_password,
    _ErrorApiUnexpectedResponse() =>
      AppMessage.current.error_api_unexpected_response,
    _ErrorApiNetworkRequestFailed() =>
      AppMessage.current.error_api_network_request_failed,
    _ErrorApiTooManyRequests() =>
      AppMessage.current.error_api_too_many_requests,
    _ErrorApiBadRequest() => AppMessage.current.error_api_bad_request,
    _ErrorApiNotFound() => AppMessage.current.error_api_not_found,
    _ErrorApiResourceUnauthorized() =>
      AppMessage.current.error_api_resource_unauthorized,
    _ErrorApiBotOperationIssue() =>
      AppMessage.current.error_api_bot_operation_issue,
    _ErrorApiBotStartTimePast() =>
      AppMessage.current.error_api_bot_start_time_past,
    _ErrorApiResourceAlreadyExists() =>
      AppMessage.current.error_api_resource_already_exists,
    _ErrorApiServerIssue() => AppMessage.current.error_api_server_issue,
    _ErrorClientUnknown() => AppMessage.current.error_client_unknow,
    _ErrorClientUnexpectedResponse() =>
      AppMessage.current.error_client_unexpected_response,
    _ErrorClientDioTimeout() => AppMessage.current.error_client_dio_timeout,
    _ErrorClientDioCancel() => AppMessage.current.error_client_dio_cancel,
    _ErrorClientDioConnection() =>
      AppMessage.current.error_client_dio_connection,
    _ErrorClientStatusCode2XX() =>
      AppMessage.current.error_client_status_code_2XX,
    _ErrorClientStatusCode4XX() =>
      AppMessage.current.error_client_status_code_4XX,
    _ErrorClientStatusCode401() =>
      AppMessage.current.error_client_status_code_401,
    _ErrorClientStatusCode407() =>
      AppMessage.current.error_client_status_code_407,
    _ErrorClientStatusCode408() =>
      AppMessage.current.error_client_status_code_408,
    _ErrorClientStatusCode409() =>
      AppMessage.current.error_client_status_code_409,
    _ErrorClientStatusCode413() =>
      AppMessage.current.error_client_status_code_413,
    _ErrorClientStatusCode414() =>
      AppMessage.current.error_client_status_code_414,
    _ErrorClientStatusCode429() =>
      AppMessage.current.error_client_status_code_429,
    _ErrorClientStatusCode5XX() =>
      AppMessage.current.error_client_status_code_5XX,
    _ErrorClientStatusCode504() =>
      AppMessage.current.error_client_status_code_504,
    _ErrorClientGooleNotYetAuthenticated() =>
      AppMessage.current.error_client_goole_not_yet_authenticated,
    _ErrorClientGooleAuthentication() =>
      AppMessage.current.error_client_goole_authentication,
    _ErrorClientWebNotSupported() =>
      AppMessage.current.error_client_web_not_supported,
    _ErrorClientMobileNotSupported() =>
      AppMessage.current.error_client_mobile_not_supported,
  };
}
