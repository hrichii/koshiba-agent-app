import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:koshiba_agent_app/ui/core/navigation/app_bottom_navigation_bar.dart';
import 'package:koshiba_agent_app/ui/core/navigation/app_navigation_rail.dart';

/// プラットフォームに応じたナビゲーションを含むScaffold
///
/// iOS/Androidの場合はBottomNavigationBar、
/// その他のプラットフォーム（Web、デスクトップ）の場合はNavigationRailを表示します。
class ScaffoldWithNavigation extends HookWidget {
  /// ScaffoldWithNavigationを作成
  const ScaffoldWithNavigation({
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

  /// プラットフォームがモバイル（iOS/Android）かどうかを判定
  bool get _isMobileDevice => !kIsWeb && (Platform.isIOS || Platform.isAndroid);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: !_isMobileDevice
              ? AppNavigationRail(
                  selectedIndex: selectedIndex,
                  onDestinationSelected: onDestinationSelected,
                  child: body,
                )
              : body,
        ),
        bottomNavigationBar: _isMobileDevice
            ? AppBottomNavigationBar(
                selectedIndex: selectedIndex,
                onDestinationSelected: onDestinationSelected,
              )
            : null,
      );
}
