import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/constants/app_text_theme.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';

class ScheduleAddPage extends StatelessWidget {
  const ScheduleAddPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            AppMessage.current.common_add_schedule,
            style: AppTextStyle.bodyLarge16.withGray100(),
          ),
        ),
        body: const Placeholder(),
      );
}
