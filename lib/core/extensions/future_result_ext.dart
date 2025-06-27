import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

extension FutureResultExt<T> on Future<Result<T, AppMessageCode>> {
  Future<Result<T, AppMessageCode>> onSuccess(
    Function(T) builderAtSuccess,
  ) async {
    final result = await this;
    switch (result) {
      case ResultOk(value: final value):
        builderAtSuccess(value);
      case ResultNg():
    }
    return result;
  }

  Future<Result<T, AppMessageCode>> onError(
    Function(AppMessageCode) builderAtError,
  ) async {
    final result = await this;
    switch (result) {
      case ResultOk():
        break;
      case ResultNg(:final value):
        builderAtError(value);
    }
    return result;
  }
}
