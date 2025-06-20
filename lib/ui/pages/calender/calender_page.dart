import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_assets.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/models/schedule/schedule.dart';
import 'package:koshiba_agent_app/logic/usecases/schedule/schedule_list_use_case.dart';
import 'package:koshiba_agent_app/ui/core/extensions/list_widget_ext.dart';
import 'package:koshiba_agent_app/ui/core/shimmer/shimmer_wiget.dart';
import 'package:koshiba_agent_app/ui/pages/calender/schedule_item_widget.dart';

class CalendarPage extends HookConsumerWidget {
  const CalendarPage({super.key});
  static const int _loadingItemCount = 10; // Shimmerの数
  static const double _shimmerHeight = 134; // Shimmerの高さ
  static const double _topPadding =
      (_shimmerHeight + AppSpace.sm8) * _loadingItemCount; // 上部の余白

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    Future<void> refresh() async {
      // データ読み込み後、上部の余白分だけスクロール位置を調整
      await ref.read(scheduleListUseCaseProvider.notifier).refresh();
      await Future.delayed(const Duration(milliseconds: 100));
      if (scrollController.hasClients) {
        scrollController.jumpTo(_topPadding - 14); // 少し余白を見せる
      }
    }

    Future<void> fetchPrevious() =>
        ref.read(scheduleListUseCaseProvider.notifier).fetchPrevious();
    Future<void> fetchNext() =>
        ref.read(scheduleListUseCaseProvider.notifier).fetchNext();
    final loadingPrevious = ref
        .watch(scheduleListUseCaseProvider)
        .loadingPrevious;
    final loadingInitial = ref
        .watch(scheduleListUseCaseProvider)
        .loadingInitial;
    final loadingNext = ref.watch(scheduleListUseCaseProvider).loadingNext;

    final scheduleList = ref.watch(
      scheduleListUseCaseProvider.select((state) => state.data),
    );

    final canFetchPrevious = ref
        .watch(scheduleListUseCaseProvider.notifier)
        .canFetchPrevious;
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await refresh();
      });
      return null;
    }, const []);

    useEffect(() {
      void onScroll() {
        if (scrollController.hasClients) {
          final position = scrollController.position;
          const threshold = 1400.0;

          // 上部余白内に入ったら前のデータを読み込み
          if (position.pixels <= _topPadding + threshold &&
              !loadingPrevious &&
              position.userScrollDirection == ScrollDirection.forward) {
            fetchPrevious();
          }

          // 下部に近づいたら次のデータを読み込み
          if (position.pixels >= position.maxScrollExtent - threshold &&
              !loadingNext &&
              position.userScrollDirection == ScrollDirection.reverse) {
            fetchNext();
          }
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [loadingPrevious, loadingNext]);

    return Scaffold(
      backgroundColor: AppColor.blue95,
      appBar: AppBar(
        backgroundColor: AppColor.gray100,
        flexibleSpace: SizedBox(
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpace.lg16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssets.imagesAppHeaderLogo.value, width: 100),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: AppSpace.xs4,
                  children: [
                    Text(
                      AppMessage.current.common_navigation_schedule,
                      style: AppTextStyle.bodyLarge16.withW600(),
                    ),
                  ],
                ),
                const SizedBox(width: 100),
              ],
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(height: 1, color: AppColor.gray90),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppSpace.lg16),
          physics: const AlwaysScrollableScrollPhysics(),
          controller: scrollController,
          children: [
            const SizedBox(height: AppSpace.sm8),
            ...[
              // 上方向スクロール用に上部に余白を追加
              ?_buildTopPadding(canFetchPrevious),
              ?_buildShimmer(loadingPrevious),
              ?_buildShimmer(loadingInitial),
              ...scheduleList
                  .map(
                    (schedule) => buildScheduleItem(
                      schedule: schedule,
                      onChanged: (isJoined) {
                        // TODO
                      },
                      onTap: () {
                        // TODO
                      },
                    ),
                  )
                  .whereType<Widget>(),
              ?_buildShimmer(loadingNext),
            ].withGap(AppSpace.sm8),
            const SizedBox(height: AppSpace.sm8),
          ],
        ),
      ),
    );
  }

  Widget? _buildTopPadding(bool canFetchPrevious) {
    if (!canFetchPrevious) {
      return null;
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpace.sm8,
        children: List.generate(
          _loadingItemCount,
          (_) => Container(
            height: _shimmerHeight,
            decoration: BoxDecoration(
              color: AppColor.gray100,
              borderRadius: BorderRadius.circular(AppRadius.lg12),
              border: Border.all(color: AppColor.gray90, width: 1),
            ),
          ),
        ),
      );
    }
  }

  Widget? _buildShimmer(bool isLoading) {
    if (!isLoading) {
      return null;
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpace.sm8,
        children: List.generate(
          _loadingItemCount,
          (_) => ShimmerWidget(
            height: _shimmerHeight,
            borderRadius: BorderRadius.circular(AppRadius.lg12),
          ),
        ),
      );
    }
  }

  Widget? buildScheduleItem({
    required ValueChanged<bool>? onChanged,
    required Schedule schedule,
    required VoidCallback onTap,
  }) {
    final scheduledBot = schedule.scheduledBot;
    final calendarEvent = schedule.googleCalendarEvent;
    final isJoined = scheduledBot != null;
    if (calendarEvent != null) {
      return ScheduleItemWidget.googleCalendarEvent(
        onChanged: onChanged,
        calendarEvent: calendarEvent,
        scheduledBot: scheduledBot,
        isJoined: isJoined,
        onTap: onTap,
      );
    }
    if (scheduledBot != null) {
      return ScheduleItemWidget.scheduledBot(
        scheduledBot: scheduledBot,
        isJoined: isJoined,
        onChanged: null,
        onTap: onTap,
      );
    }
    return null;
  }
}
