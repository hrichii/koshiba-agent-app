import 'package:dio/dio.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';

class ResponseHandleInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final appMessageCode = _getAppMessageCode(response: response);
    final apiResponseOk = ApiResponseOk(
      messageCode: appMessageCode,
      data: response.data['data'],
    );
    handler.next(
      Response(
        data: apiResponseOk.toJson((json) => json),
        requestOptions: response.requestOptions,
        statusCode: response.statusCode,
        isRedirect: response.isRedirect,
        redirects: response.redirects,
        extra: response.extra,
        headers: response.headers,
      ),
    );
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final appMessageCode =
        _getAppMessageCode(response: err.response, dioExceptionType: err.type);
    handler.resolve(
      Response(
        data: ApiResponseNg(messageCode: appMessageCode).toJson((json) => json),
        requestOptions: err.requestOptions,
      ),
    );
  }

  AppMessageCode _getAppMessageCode({
    required Response? response,
    DioExceptionType? dioExceptionType,
  }) {
    // メタ情報が存在する場合
    try {
      if (response?.data['meta'] case final Map<String, dynamic> meta) {
        return AppMessageCode.fromJson(meta);
      }
    } catch (_) {}

    // DioExceptionによるエラーの場合
    if (dioExceptionType != null) {
      return AppMessageCode.fromDioExceptionType(dioExceptionType);
    }

    // ステータスコードを元にエラーを生成
    if (response?.statusCode case final int statusCode) {
      return AppMessageCode.fromStatusCode(
        statusCode: statusCode,
        message: response?.data?.toString(),
      );
    }

    return AppMessageCode.errorClientUnknown(message: response.toString());
  }
}
