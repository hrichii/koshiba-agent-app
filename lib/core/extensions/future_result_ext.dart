import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/ui/core/toast/toast.dart';

extension FutureResultExt<T> on Future<Result<T, AppMessageCode>> {
  Future<Result<T, AppMessageCode>> withToastAtError() async {
    final result = await this;
    switch (result) {
      case ResultNg(value: final value):
        Toast().showError(value.localizedMessage);
      case ResultOk():
    }
    return result;
  }

  Future<Result<T, AppMessageCode>> withToastAtSuccess(
    String Function(Result<T, AppMessageCode> value) messageCodeBuilder,
  ) async {
    final result = await this;
    switch (result) {
      case ResultOk():
        Toast().showSuccess(messageCodeBuilder(result));
      case ResultNg():
    }
    return result;
  }

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

  Future<Result<T, AppMessageCode>> onSuccessWithoutValue(
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
