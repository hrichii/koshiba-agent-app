import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/constants/app_color.dart';
import 'package:koshiba_agent_app/core/constants/app_radius.dart';
import 'package:koshiba_agent_app/core/utils/global_context/global_context.dart';

class LoaderOverlay {
  factory LoaderOverlay() => _instance;

  LoaderOverlay._();
  static final LoaderOverlay _instance = LoaderOverlay._();

  bool get isShow => _overlayEntry != null;
  OverlayEntry? _overlayEntry;

  void show() {
    if (!isShow) {
      _overlayInsert();
    }
  }

  void hidden() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _overlayInsert() {
    _overlayEntry = OverlayEntry(builder: (context) => _LoaderOverlayWidget());
    Overlay.of(GlobalContext.context).insert(_overlayEntry!);
  }
}

class _LoaderOverlayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Positioned.fill(
        child: Material(
          color: AppColor.gray0.withValues(alpha: 0.75),
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          child: Center(
            child: Card(
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.gray10,
                  borderRadius: BorderRadius.circular(AppRadius.xl16),
                ),
                child: const SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
        ),
      );
}
