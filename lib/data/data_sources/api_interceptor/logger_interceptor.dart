import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggerInterceptor extends Interceptor {
  final logger = Logger();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.i(
      'Request\n'
      'URL: ${options.uri}\n'
      'Method: ${options.method}\n'
      'Headers: ${options.headers}\n'
      'Data: ${options.data}',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i(
      'Response\n'
      'URL: ${response.requestOptions.uri}\n'
      'Status Code: ${response.statusCode}\n'
      'Headers: ${response.headers}\n'
      'Data: ${response.data}',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e(
      'Error\n'
      'URL: ${err.requestOptions.uri}\n'
      'Message: ${err.message}\n'
      'Status Code: ${err.response?.statusCode}\n'
      'Headers: ${err.response?.headers}\n'
      'Data: ${err.response?.data}',
    );
    super.onError(err, handler);
  }
}
