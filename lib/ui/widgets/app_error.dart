import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/constants/app_space.dart';
import 'package:koshiba_agent_app/core/constants/app_text_theme.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';

/// アプリ共通のエラー表示ウィジェット
class AppError extends StatelessWidget {
  const AppError({
    required this.error,
    super.key,
    this.onRetry,
  });

  final String error;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpace.lg16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error_outline,
                size: 48,
                color: Colors.red.shade400,
              ),
              const SizedBox(height: AppSpace.md12),
              Text(
                'エラーが発生しました',
                style: AppTextStyle.bodyLarge16.withGray100(),
              ),
              const SizedBox(height: AppSpace.sm8),
              Text(
                error,
                style: AppTextStyle.bodyMedium14,
                textAlign: TextAlign.center,
              ),
              if (onRetry != null) ...[
                const SizedBox(height: AppSpace.lg16),
                ElevatedButton.icon(
                  onPressed: onRetry,
                  icon: const Icon(Icons.refresh),
                  label: const Text('再試行'),
                ),
              ],
            ],
          ),
        ),
      );
}
