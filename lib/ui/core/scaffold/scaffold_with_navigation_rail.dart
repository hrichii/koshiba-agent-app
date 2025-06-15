import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:koshiba_agent_app/ui/core/navigation/app_navigation_rail.dart';

class ScaffoldWithNavigationRail extends HookWidget {
  const ScaffoldWithNavigationRail({required this.child, super.key});

  /// メインコンテンツ
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(child: AppNavigationRail(child: child)),
  );
}
