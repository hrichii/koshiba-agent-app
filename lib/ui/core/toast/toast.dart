import 'dart:async';

import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';

enum _ToastEnum {
  success,
  warn,
  error;

  Color get color => switch (this) {
    _ToastEnum.success => AppColor.success,
    _ToastEnum.warn => AppColor.warn,
    _ToastEnum.error => AppColor.error,
  };

  IconData get iconData => switch (this) {
    _ToastEnum.success => Icons.check_circle_outline,
    _ToastEnum.warn => Icons.warning_amber_outlined,
    _ToastEnum.error => Icons.error_outline,
  };
}

@immutable
class _ToastEntity {
  const _ToastEntity({required this.message, required this.toastEnum});
  final String message;
  final _ToastEnum toastEnum;
}

class Toast {
  factory Toast() => _instance;

  Toast._();

  static final Toast _instance = Toast._();

  final List<_ToastEntity> _toastEntityList = [];

  BuildContext get context => GlobalContext.context;

  void showSuccess(String message) {
    _show(
      toastEntity: _ToastEntity(
        message: message,
        toastEnum: _ToastEnum.success,
      ),
    );
  }

  void showWarning(String message) {
    _show(
      toastEntity: _ToastEntity(message: message, toastEnum: _ToastEnum.warn),
    );
  }

  void showError(String message) {
    _show(
      toastEntity: _ToastEntity(message: message, toastEnum: _ToastEnum.error),
    );
  }

  void showErrorByMessagecode(AppMessageCode messageCode) {
    _show(
      toastEntity: _ToastEntity(
        message: messageCode.localizedMessage,
        toastEnum: _ToastEnum.error,
      ),
    );
  }

  /// トーストを表示する。
  /// 既にトーストが表示されている場合は、Listに追加し、順番に表示
  void _show({required _ToastEntity toastEntity}) {
    _toastEntityList.add(toastEntity);
    if (_toastEntityList.length == 1) {
      _overlayInsert(toastEntity: toastEntity);
    }
  }

  void _overlayInsert({required _ToastEntity toastEntity}) {
    OverlayEntry? entry;
    entry = OverlayEntry(
      builder: (context) => _ToastStateful(
        toastEntity: toastEntity,
        onDismiss: () {
          entry?.remove();
          _toastEntityList.remove(toastEntity);
          if (_toastEntityList.isNotEmpty) {
            _overlayInsert(toastEntity: _toastEntityList.first);
          }
        },
      ),
    );
    Overlay.of(context).insert(entry);
  }
}

class _ToastStateful extends StatefulWidget {
  const _ToastStateful({required this.toastEntity, required this.onDismiss});

  final _ToastEntity toastEntity;
  final VoidCallback onDismiss;

  @override
  _ToastStateFulState createState() => _ToastStateFulState();
}

class _ToastStateFulState extends State<_ToastStateful>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
    );
    _offsetAnimation =
        Tween<Offset>(
          begin: const Offset(0, -1),
          end: const Offset(0, 0),
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        );
    _animationController.forward();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        _animationController.reverse().then((value) {
          widget.onDismiss();
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Positioned(
    top: MediaQuery.of(context).viewPadding.top + 4,
    left: 16,
    right: 16,
    child: SlideTransition(
      position: _offsetAnimation,
      child: Material(
        color: Colors.transparent,
        child: _ToastWidget(
          iconData: widget.toastEntity.toastEnum.iconData,
          iconColor: widget.toastEntity.toastEnum.color,
          label: widget.toastEntity.message,
        ),
      ),
    ),
  );
}

class _ToastWidget extends StatelessWidget {
  const _ToastWidget({
    required this.iconData,
    required this.iconColor,
    required this.label,
  });
  final IconData iconData;
  final Color iconColor;
  final String label;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(AppSpace.lg16),
    decoration: BoxDecoration(
      color: AppColor.gray5,
      borderRadius: BorderRadius.circular(AppRadius.md8),
      boxShadow: [
        BoxShadow(
          color: AppColor.shadow,
          spreadRadius: 0,
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSpace.xs4,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSpace.xs4),
              child: Icon(iconData, color: iconColor),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  label,
                  style: AppTextStyle.bodyLarge16.withW300().withGray100(),
                  maxLines: 3,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
