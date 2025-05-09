import 'package:firebase_core/firebase_core.dart';
import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';

extension FutureExt<T> on Future<T> {
  /// Returns a [Future] that completes with the value of this future
  /// or with the provided default value if this future completes with an error.
  Future<Result<U, AppException>> toResult<U>({
    required U Function(T) map,
  }) async {
    try {
      final result = await this;
      return ResultSuccess(value: map(result));
    } on FirebaseException catch (e) {
      return ResultError(
        value: ServerException(description: e.code + (e.message ?? '')),
      );
    } catch (e) {
      return ResultError(value: UnknownException(description: e.toString()));
    }
  }
}
