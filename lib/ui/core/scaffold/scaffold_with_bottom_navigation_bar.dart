import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:koshiba_agent_app/ui/core/navigation/app_bottom_navigation_bar.dart';

class ScaffoldWithBottomNavigationBar extends HookWidget {
  const ScaffoldWithBottomNavigationBar({
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.body,
    super.key,
  });

  /// 現在選択されているタブのインデックス
  final int selectedIndex;

  /// タブが選択された時のコールバック
  final ValueChanged<int> onDestinationSelected;

  /// メインコンテンツ
  final Widget body;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(child: body),
    bottomNavigationBar: AppBottomNavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    ),
  );
}
