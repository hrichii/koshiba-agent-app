import 'package:firebase_core/firebase_core.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

extension FutureExt<T> on Future<T> {
  /// Returns a [Future] that completes with the value of this future
  /// or with the provided default value if this future completes with an error.
  Future<Result<U, AppMessageCode>> toResult<U>({
    required U Function(T) map,
  }) async {
    try {
      final result = await this;
      return ResultOk(value: map(result));
    } on FirebaseException catch (e) {
      return ResultNg(
        value: AppMessageCode.errorApiServerIssue(message: e.message),
      );
    } catch (e) {
      return ResultNg(
        value: AppMessageCode.errorClientUnknown(message: e.toString()),
      );
    }
  }
}
