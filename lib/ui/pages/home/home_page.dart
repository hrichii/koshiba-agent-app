import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/constants/app_color.dart';
import 'package:koshiba_agent_app/core/constants/app_radius.dart';
import 'package:koshiba_agent_app/core/constants/app_space.dart';
import 'package:koshiba_agent_app/core/constants/app_text_theme.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/ui/routers/router.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: Text(
            AppMessage.current.common_navigation_home,
            style: AppTextStyle.bodyLarge16.withGray100(),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: AppSpace.lg16,
              children: [
                Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.xll32),
                    color: AppColor.onPrimary,
                  ),
                  child: IconButton(
                    onPressed: () => const BotInviteRoute().push(context),
                    icon: SizedBox(
                      width: 80,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.smart_toy_outlined,
                          ),
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
                Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppRadius.xll32),
                    color: AppColor.onPrimary,
                  ),
                  child: IconButton(
                    onPressed: () => const ScheduleAddRoute().push(context),
                    icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.event_outlined,
                        ),
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
            const SizedBox(height: AppSpace.xl24),
            const Divider(),
          ],
        ),
      );
}
