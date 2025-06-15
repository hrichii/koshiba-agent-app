import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting.dart';
import 'package:koshiba_agent_app/logic/models/meeting/meeting_bot_status.dart';
import 'package:koshiba_agent_app/ui/pages/home/home_page_provider.dart';
import 'package:koshiba_agent_app/ui/routers/router.dart';
import 'package:koshiba_agent_app/ui/widgets/app_error.dart';
import 'package:koshiba_agent_app/ui/widgets/app_loading.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 会議リストの状態を取得
    final meetingList = ref.watch(meetingListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppMessage.current.common_navigation_home,
          style: AppTextStyle.bodyLarge16.withGray100(),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.read(meetingListProvider.notifier).refreshMeetingList(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSpace.md12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppRadius.xll32),
                        color: AppColor.onPrimary,
                      ),
                      child: IconButton(
                        onPressed: () async {
                          await const BotInviteRoute().push(context);
                          await ref
                              .read(meetingListProvider.notifier)
                              .refreshMeetingList();
                        },
                        icon: SizedBox(
                          width: 80,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.smart_toy_outlined),
                              Text(
                                AppMessage.current.common_invite_bot,
                                style: Theme.of(context).textTheme.labelLarge,
                                overflow: TextOverflow.visible,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpace.lg16),
                    Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppRadius.xll32),
                        color: AppColor.onPrimary,
                      ),
                      child: IconButton(
                        onPressed: () async {
                          await const ScheduleAddRoute().push(context);
                          await ref
                              .read(meetingListProvider.notifier)
                              .refreshMeetingList();
                        },
                        icon: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.event_outlined),
                            Text(
                              AppMessage.current.common_add_schedule,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpace.xl24),
              const Divider(),
              // 会議リストのセクション
              Padding(
                padding: const EdgeInsets.all(AppSpace.md12),
                child: Text(
                  '予定されている会議',
                  style: AppTextStyle.bodyLarge16.withGray100(),
                ),
              ),
              // 会議リストを表示
              SizedBox(
                child: meetingList.when(
                  data: (meetings) {
                    if (meetings.isEmpty) {
                      return const Center(child: Text('予定されている会議はありません'));
                    }

                    return ListView.builder(
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), // 親スクロールに任せる
                      itemCount: meetings.length,
                      itemBuilder: (context, index) {
                        final meeting = meetings[index];
                        return MeetingCard(meeting: meeting);
                      },
                    );
                  },
                  loading: () => const AppLoading(),
                  error: (error, stackTrace) => AppError(
                    error: error.toString(),
                    onRetry: () => ref
                        .read(meetingListProvider.notifier)
                        .fetchMeetingList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 会議表示用のカードウィジェット
class MeetingCard extends ConsumerWidget {
  const MeetingCard({required this.meeting, super.key});

  final Meeting meeting;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 日付フォーマッター
    final dateFormat = DateFormat('yyyy/MM/dd HH:mm');

    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSpace.md12,
        vertical: AppSpace.sm8,
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(AppSpace.md12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.videocam_outlined,
                  size: 24,
                  color: Colors.blue,
                ),
                const SizedBox(width: AppSpace.sm8),
                Text('会議', style: AppTextStyle.bodyLarge16.withGray100()),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                    size: 20,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    // 会議削除処理
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('会議を削除'),
                        content: const Text('この会議を削除しますか？'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('キャンセル'),
                          ),
                          TextButton(
                            onPressed: () {
                              final meetingId = meeting.id;
                              // Providerのコンテキストから削除処理を実行
                              Navigator.of(context).pop();
                              _deleteMeeting(context, ref, meetingId);
                            },
                            child: const Text('削除'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: AppSpace.sm8),
            // ID情報
            Row(
              children: [
                const Icon(Icons.tag, size: 16, color: Colors.grey),
                const SizedBox(width: AppSpace.sm8),
                Text('ID: ', style: AppTextStyle.bodyMedium14),
                Text(
                  meeting.id,
                  style: AppTextStyle.bodyMedium14.withGray100(),
                ),
              ],
            ),
            const SizedBox(height: AppSpace.sm8),
            // 開始日時情報
            Row(
              children: [
                const Icon(Icons.access_time, size: 16, color: Colors.grey),
                const SizedBox(width: AppSpace.sm8),
                Text('開始日時: ', style: AppTextStyle.bodyMedium14),
                Text(
                  dateFormat.format(meeting.startAt),
                  style: AppTextStyle.bodyMedium14.withGray100(),
                ),
              ],
            ),
            const SizedBox(height: AppSpace.sm8),
            // 作成日時情報
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                const SizedBox(width: AppSpace.sm8),
                Text('作成日時: ', style: AppTextStyle.bodyMedium14),
                Text(
                  dateFormat.format(meeting.createdAt),
                  style: AppTextStyle.bodyMedium14.withGray100(),
                ),
              ],
            ),
            const SizedBox(height: AppSpace.sm8),
            // Meeting BaaS ID情報
            Row(
              children: [
                const Icon(Icons.cloud_outlined, size: 16, color: Colors.grey),
                const SizedBox(width: AppSpace.sm8),
                Text('BaaS ID: ', style: AppTextStyle.bodyMedium14),
                Text(
                  meeting.meetingBaasId,
                  style: AppTextStyle.bodyMedium14.withGray100(),
                ),
              ],
            ),
            const SizedBox(height: AppSpace.sm8),
            // ボットステータス情報
            Row(
              children: [
                Icon(
                  _getStatusIcon(meeting.status.level),
                  size: 16,
                  color: _getStatusColor(meeting.status.level),
                ),
                const SizedBox(width: AppSpace.sm8),
                Text('ステータス: ', style: AppTextStyle.bodyMedium14),
                Expanded(
                  child: Text(
                    meeting.status.code.message,
                    style: AppTextStyle.bodyMedium14.copyWith(
                      color: _getStatusColor(meeting.status.level),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpace.sm8),
            // URL情報
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.link, size: 16, color: Colors.grey),
                const SizedBox(width: AppSpace.sm8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('会議URL: ', style: AppTextStyle.bodyMedium14),
                      const SizedBox(height: 2),
                      Text(
                        meeting.url.toString(),
                        style: AppTextStyle.bodySmall12.withGray100(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // 会議を削除するメソッド
  void _deleteMeeting(
    BuildContext context,
    WidgetRef ref,
    String meetingId,
  ) async {
    // 削除中を示すローディングインジケータを表示
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    // WidgetRefを使用してProviderから削除処理を実行
    final result = await ref
        .read(meetingListProvider.notifier)
        .deleteMeeting(meetingId)
        .withLoaderOverlay();

    if (result) {
      // 削除成功
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text('会議を削除しました'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      // 削除失敗
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text('会議の削除に失敗しました'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  // ヘルパーメソッド：ステータスレベルに応じたアイコンを返す
  IconData _getStatusIcon(BotStatusLevel level) {
    switch (level) {
      case BotStatusLevel.ready:
        return Icons.access_time;
      case BotStatusLevel.active:
        return Icons.radio_button_checked;
      case BotStatusLevel.completed:
        return Icons.check_circle_outline;
      case BotStatusLevel.failed:
        return Icons.error_outline;
    }
  }

  // ヘルパーメソッド：ステータスレベルに応じた色を返す
  Color _getStatusColor(BotStatusLevel level) {
    switch (level) {
      case BotStatusLevel.ready:
        return Colors.orange;
      case BotStatusLevel.active:
        return Colors.green;
      case BotStatusLevel.completed:
        return Colors.blue;
      case BotStatusLevel.failed:
        return Colors.red;
    }
  }
}
