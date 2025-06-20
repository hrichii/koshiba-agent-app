import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_route_path.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/ui/core/mover/app_mover.dart';

/// ナビゲーションレール
///
/// Webアプリケーション用の垂直ナビゲーションバーを提供します。
/// ホーム、カレンダー、ドキュメント、設定の4つのタブを持ちます。
class AppNavigationRail extends HookWidget {
  /// AppNavigationRailを作成
  const AppNavigationRail({required this.child, super.key});

  /// メインコンテンツ
  final Widget child;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        width: 100,
        decoration: BoxDecoration(
          color: AppColor.surface,
          border: Border(
            right: BorderSide(
              color: AppColor.onSurface.withValues(alpha: 0.1),
              width: 1,
            ),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: AppSpace.lg16),
            // ロゴやブランド表示用のスペース
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(width: 40, height: 40, child: Placeholder()),
            ),
            const SizedBox(height: 16),
            // ナビゲーションアイテム
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildNavItem(
                    context: context,
                    path: AppRoutePath.home,
                    icon: Icons.home_outlined,
                    selectedIcon: Icons.home,
                    label: AppMessage.current.common_navigation_home,
                    onTap: () => AppMover.goHome(),
                  ),
                  _buildNavItem(
                    context: context,
                    path: AppRoutePath.calender,
                    icon: Icons.calendar_month_outlined,
                    selectedIcon: Icons.calendar_month,
                    label: AppMessage.current.common_navigation_schedule,
                    onTap: () => AppMover.goCalendar(),
                  ),
                  _buildNavItem(
                    context: context,
                    path: AppRoutePath.document,
                    icon: Icons.description_outlined,
                    selectedIcon: Icons.description,
                    label: AppMessage.current.common_navigation_document,
                    onTap: () => AppMover.goDocument(),
                  ),
                  _buildNavItem(
                    context: context,
                    path: AppRoutePath.setting,
                    icon: Icons.account_circle_outlined,
                    selectedIcon: Icons.account_circle,
                    label: AppMessage.current.common_navigation_accounts,
                    onTap: () => AppMover.goSetting(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // メインコンテンツ
      Expanded(child: child),
    ],
  );

  /// ナビゲーションアイテムを構築
  Widget _buildNavItem({
    required BuildContext context,
    required String path,
    required IconData icon,
    required IconData selectedIcon,
    required String label,
    required VoidCallback onTap,
  }) {
    final isSelected = GoRouter.of(context).state.path == path;

    // 選択状態に基づいて色を決定
    final color = isSelected
        ? AppColor.primary
        : AppColor.onSurface.withValues(alpha: 0.7);

    // 選択状態に基づいてアイコンを決定
    final iconData = isSelected ? selectedIcon : icon;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpace.xs4,
        horizontal: AppSpace.sm8,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppRadius.lg12),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: AppSpace.md12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.lg12),
              color: isSelected
                  ? AppColor.primaryContainer.withValues(alpha: 0.3)
                  : Colors.transparent,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: AppSpace.xs4,
              children: [
                Icon(iconData, color: color, size: 26),
                Text(
                  label,
                  style: AppTextStyle.bodySmall12.copyWith(
                    color: color,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
