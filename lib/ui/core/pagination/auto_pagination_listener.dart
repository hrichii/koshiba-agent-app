import 'package:flutter/material.dart';

/// 自動ページネーション機能を提供するNotificationListener
class AutoPaginationListener extends StatelessWidget {
  const AutoPaginationListener({
    required this.child,
    required this.topPadding,
    required this.loadingPrevious,
    required this.loadingNext,
    required this.onFetchPrevious,
    required this.onFetchNext,
    this.threshold = 400.0,
    super.key,
  });

  final Widget child;
  final double topPadding;
  final double threshold;
  final bool loadingPrevious;
  final bool loadingNext;
  final VoidCallback onFetchPrevious;
  final VoidCallback onFetchNext;

  @override
  Widget build(BuildContext context) =>
      NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            final position = notification.metrics;
            final scrollDelta = notification.scrollDelta ?? 0.0;

            // 上方向にスクロールしており、上部余白内に入ったら前のデータを読み込み
            if (scrollDelta < 0 &&
                position.pixels <= topPadding + threshold &&
                !loadingPrevious) {
              onFetchPrevious();
            }

            // 下方向にスクロールしており、下部に近づいたら次のデータを読み込み
            if (scrollDelta > 0 &&
                position.pixels >= position.maxScrollExtent - threshold &&
                !loadingNext) {
              onFetchNext();
            }
          }
          return false;
        },
        child: child,
      );
}
