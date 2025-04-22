import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/ui/core/toast/toast.dart';

extension FutureResultExt<T> on Future<Result<T, AppException>> {
  Future<Result<T, AppException>> withErrorToast() async {
    final result = await this;
    switch (result) {
      case ResultFailure(value: final appException):
        Toast().showError(message: appException.toString());
      case ResultSuccess():
    }
    return result;
  }
}
