import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/ui/core/toast/toast.dart';

extension FutureResultExt<T> on Future<Result<T, AppException>> {
  Future<Result<T, AppException>> withToastAtError() async {
    final result = await this;
    switch (result) {
      case ResultNg(value: final appException):
        Toast().showError(message: appException.message);
      case ResultOk():
    }
    return result;
  }

  Future<Result<T, AppException>> withToastAtSuccess(
    String Function(Result<T, AppException> value) messageBuilder,
  ) async {
    final result = await this;
    switch (result) {
      case ResultOk():
        Toast().showSuccess(message: messageBuilder(result));
      case ResultNg():
    }
    return result;
  }

  Future<Result<T, AppException>> onSuccess(
    Function(BuildContext, T) builderAtSuccess,
  ) async {
    final result = await this;
    switch (result) {
      case ResultOk(value: final value):
        if (GlobalContext.context.mounted) {
          builderAtSuccess(
            GlobalContext.context,
            value,
          );
        }
      case ResultNg():
    }
    return result;
  }

  Future<Result<T, AppException>> onSuccessWithoutValue(
    Function(BuildContext) builderAtSuccess,
  ) async {
    final result = await this;
    switch (result) {
      case ResultOk():
        if (GlobalContext.context.mounted) {
          builderAtSuccess(GlobalContext.context);
        }
      case ResultNg():
    }
    return result;
  }

  Future<Result<T, AppException>> onError(
    Function(BuildContext, AppException) builderAtError,
  ) async {
    final result = await this;
    switch (result) {
      case ResultOk():
        break;
      case ResultNg(:final value):
        if (GlobalContext.context.mounted) {
          builderAtError(
            GlobalContext.context,
            value,
          );
        }
    }
    return result;
  }
}
