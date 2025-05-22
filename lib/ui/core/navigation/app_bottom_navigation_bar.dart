import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';

/// ボトムナビゲーションバー
///
/// モバイルアプリケーション用の水平ナビゲーションバーを提供します。
/// ホーム、カレンダー、ドキュメント、設定の4つのタブを持ちます。
class AppBottomNavigationBar extends HookWidget {
  /// AppBottomNavigationBarを作成
  const AppBottomNavigationBar({
    required this.selectedIndex,
    required this.onDestinationSelected,
    super.key,
  });

  /// 現在選択されているタブのインデックス
  final int selectedIndex;

  /// タブが選択された時のコールバック
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onDestinationSelected,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home),
            label: AppMessage.current.common_navigation_home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.calendar_month_outlined),
            activeIcon: const Icon(Icons.calendar_month),
            label: AppMessage.current.common_navigation_calendar,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.description_outlined),
            activeIcon: const Icon(Icons.description),
            label: AppMessage.current.common_navigation_document,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_outlined),
            activeIcon: const Icon(Icons.settings),
            label: AppMessage.current.common_navigation_settings,
          ),
        ],
      );
}
