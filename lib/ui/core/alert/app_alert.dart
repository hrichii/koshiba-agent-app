import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/color_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class AppAlert {
  AppAlert._();

  static final List<_AppAlertDisplayState> _alertDisplayStateList = [];

  static BuildContext get _rootContext => GlobalContext.context;

  static Future<T?> _showReserved<T>({
    required Widget Function(BuildContext context) builder,
    BuildContext? context,
    bool barrierDismissible = false,
  }) async {
    final state = _AppAlertDisplayState(
      completer: Completer<void>(),
      dialogRoute: DialogRoute(
        barrierDismissible: barrierDismissible,
        context: context ?? _rootContext,
        builder: (context) =>
            PopScope(canPop: barrierDismissible, child: builder(context)),
      ),
    );
    _alertDisplayStateList.add(state);

    final popOrCancel = await Future.any([
      state.completer.future,
      Navigator.of(_rootContext).push(state.dialogRoute),
    ]);

    _alertDisplayStateList.remove(state);

    if (state.completer.isCompleted) {
      return null;
    } else {
      return popOrCancel as T?;
    }
  }

  static Future<bool?> showConfirm({
    String? title,
    String? content,
    String? confirmText,
    bool useRedForConfirmText = false,
    BuildContext? context,
    bool barrierDismissible = true,
    bool useCancel = true,
  }) => show(
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (pop) => AppAlertView(
      title: title,
      content: content,
      actionList: [
        if (useCancel)
          AppAlertAction.normal(
            text: AppMessage.current.common_cancel,
            onPressed: () => pop(null),
          ),
        if (confirmText != null)
          AppAlertAction._(
            text: confirmText,
            onPressed: () => pop(true),
            useBold: true,
            useRed: useRedForConfirmText,
          ),
      ],
    ),
  );

  static Future<T?> show<T>({
    required Widget Function(void Function(T?) pop) builder,
    BuildContext? context,
    bool barrierDismissible = true,
  }) => _showReserved(
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (context) => builder(Navigator.of(context).pop),
  );

  static void closeAll() {
    while (_alertDisplayStateList.isNotEmpty) {
      final dialogState = _alertDisplayStateList.last;
      Navigator.of(_rootContext).removeRoute(dialogState.dialogRoute);
      _alertDisplayStateList.remove(dialogState);
      dialogState.completer.complete();
    }
  }
}

class _AppAlertDisplayState {
  _AppAlertDisplayState({required this.completer, required this.dialogRoute});
  final Completer<void> completer;
  final DialogRoute dialogRoute;
}

class AppAlertView extends StatelessWidget {
  const AppAlertView({
    required this.actionList,
    super.key,
    this.title,
    this.content,
  });
  final String? title;
  final String? content;
  final List<AppAlertAction> actionList;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || Platform.isAndroid) {
      return AlertDialog(
        title: title == null ? null : Text(title!),
        titleTextStyle: AppTextStyle.bodyLarge16.copyWith(
          overflow: TextOverflow.visible,
        ),
        content: content == null ? null : Text(content!),
        contentTextStyle: AppTextStyle.bodyMedium14.copyWith(
          overflow: TextOverflow.visible,
        ),
        actions: actionList,
      );
    } else {
      return CupertinoAlertDialog(
        title: title == null ? null : Text(title!),
        content: content == null ? null : Text(content!),
        actions: actionList,
      );
    }
  }
}

class AppAlertAction extends StatelessWidget {
  const AppAlertAction._({
    required this.text,
    required this.onPressed,
    required this.useBold,
    required this.useRed,
  });

  factory AppAlertAction.normal({
    required String text,
    required VoidCallback? onPressed,
  }) => AppAlertAction._(
    text: text,
    onPressed: onPressed,
    useBold: false,
    useRed: false,
  );

  factory AppAlertAction.primary({
    required String text,
    required VoidCallback? onPressed,
  }) => AppAlertAction._(
    text: text,
    onPressed: onPressed,
    useBold: true,
    useRed: false,
  );

  factory AppAlertAction.delete({
    required String text,
    required VoidCallback? onPressed,
  }) => AppAlertAction._(
    text: text,
    onPressed: onPressed,
    useBold: false,
    useRed: true,
  );

  final String text;
  final VoidCallback? onPressed;
  final bool useBold;
  final bool useRed;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || Platform.isAndroid) {
      final borderRadius = BorderRadius.circular(AppRadius.sm4);
      return Material(
        color: Colors.transparent,
        borderRadius: borderRadius,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(AppRadius.md8),
            child: Text(text, style: _getTextStyle()),
          ),
        ),
      );
    } else {
      return CupertinoDialogAction(
        isDefaultAction: useBold,
        isDestructiveAction: useRed,
        onPressed: onPressed,
        child: Text(text),
      );
    }
  }

  TextStyle _getTextStyle() {
    final Color color;
    if (onPressed == null) {
      color = AppColor.onSurface.withWhite(0.5);
    } else if (useRed) {
      color = AppColor.error;
    } else {
      color = AppColor.primary;
    }
    return AppTextStyle.bodyMedium14.copyWith(
      color: color,
      fontWeight: useBold ? FontWeight.w300 : FontWeight.w600,
    );
  }
}
