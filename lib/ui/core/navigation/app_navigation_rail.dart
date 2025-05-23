import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';

/// ナビゲーションレール
///
/// Webアプリケーション用の垂直ナビゲーションバーを提供します。
/// ホーム、カレンダー、ドキュメント、設定の4つのタブを持ちます。
class AppNavigationRail extends HookWidget {
  /// AppNavigationRailを作成
  const AppNavigationRail({
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.child,
    super.key,
  });

  /// 現在選択されているタブのインデックス
  final int selectedIndex;

  /// タブが選択された時のコールバック
  final ValueChanged<int> onDestinationSelected;

  /// メインコンテンツ
  final Widget child;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: const Icon(Icons.home_outlined),
                selectedIcon: const Icon(Icons.home),
                label: Text(AppMessage.current.common_navigation_home),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.calendar_month_outlined),
                selectedIcon: const Icon(Icons.calendar_month),
                label: Text(AppMessage.current.common_navigation_calendar),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.description_outlined),
                selectedIcon: const Icon(Icons.description),
                label: Text(AppMessage.current.common_navigation_document),
              ),
              NavigationRailDestination(
                icon: const Icon(Icons.settings_outlined),
                selectedIcon: const Icon(Icons.settings),
                label: Text(AppMessage.current.common_navigation_settings),
              ),
            ],
          ),
          Expanded(child: child),
          // Container(
          //   width: 1000,
          //   color: Colors.red,
          //   child: child,
          // ),
        ],
      );
}
