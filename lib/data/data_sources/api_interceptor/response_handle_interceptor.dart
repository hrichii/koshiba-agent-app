import 'package:dio/dio.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code_enum.dart';
import 'package:koshiba_agent_app/logic/models/api_response/api_response.dart';

class ResponseHandleInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO(hrichii): エラーハンドリング
    final appMessageCodeEnum =
        AppMessageCodeEnum.fromString(response.data['code']);
    final message = response.data['message'];
    final apiResponseOk = ApiResponseOk(
      meta: Meta(
        code: appMessageCodeEnum,
        message: message,
      ),
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
    // TODO(hrichii): エラーハンドリング
    final appMessageCodeEnum =
        AppMessageCodeEnum.fromString(err.response?.data['code']);
    final message = err.response?.data['message'];
    final apiResponseNg = ApiResponseNg(
      meta: Meta(
        code: appMessageCodeEnum,
        message: message,
      ),
    );
    handler.resolve(
      Response(
        data: apiResponseNg.toJson((json) => json),
        requestOptions: err.requestOptions,
      ),
    );
  }
}
