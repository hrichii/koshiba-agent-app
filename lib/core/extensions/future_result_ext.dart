import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/exceptions/app_exception.dart';
import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/ui/core/toast/toast.dart';

extension FutureResultExt<T> on Future<Result<T, AppException>> {
  Future<Result<T, AppException>> withToastAtError() async {
    final result = await this;
    switch (result) {
      case ResultError(value: final appException):
        Toast().showError(message: appException.message);
      case ResultSuccess():
    }
    return result;
  }

  Future<Result<T, AppException>> withToastAtSuccess(
    String Function(T value) messageBuilder,
  ) async {
    final result = await this;
    switch (result) {
      case ResultSuccess(:final value):
        Toast().showSuccess(message: messageBuilder(value));
      case ResultError():
    }
    return result;
  }

  Future<Result<T, AppException>> onSuccess(
    Function(BuildContext, T) builderAtSuccess,
  ) async {
    final result = await this;
    switch (result) {
      case ResultSuccess(value: final value):
        if (GlobalContext.context.mounted) {
          builderAtSuccess(
            GlobalContext.context,
            value,
          );
        }
      case ResultError():
    }
    return result;
  }

  Future<Result<T, AppException>> onSuccessWithoutValue(
    Function(BuildContext) builderAtSuccess,
  ) async {
    final result = await this;
    switch (result) {
      case ResultSuccess():
        if (GlobalContext.context.mounted) {
          builderAtSuccess(GlobalContext.context);
        }
      case ResultError():
    }
    return result;
  }

  Future<Result<T, AppException>> onError(
    Function(BuildContext, AppException) builderAtError,
  ) async {
    final result = await this;
    switch (result) {
      case ResultSuccess():
        break;
      case ResultError(:final value):
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
