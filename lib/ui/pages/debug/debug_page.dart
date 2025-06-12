import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/button_style/filled_button_style.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';

class DebugPage extends ConsumerWidget {
  DebugPage({super.key});

  final List<Color> primaryColorList = [
    AppColor.blue0,
    AppColor.blue10,
    AppColor.blue20,
    AppColor.blue25,
    AppColor.blue30,
    AppColor.blue35,
    AppColor.blue40,
    AppColor.blue50,
    AppColor.blue60,
    AppColor.blue70,
    AppColor.blue80,
    AppColor.blue90,
    AppColor.blue95,
    AppColor.blue98,
    AppColor.blue99,
    AppColor.blue100,
  ];

  final List<Color> secondaryColorList = [
    AppColor.yellow0,
    AppColor.yellow10,
    AppColor.yellow20,
    AppColor.yellow25,
    AppColor.yellow30,
    AppColor.yellow35,
    AppColor.yellow40,
    AppColor.yellow50,
    AppColor.yellow60,
    AppColor.yellow70,
    AppColor.yellow80,
    AppColor.yellow90,
    AppColor.yellow95,
    AppColor.yellow98,
    AppColor.yellow99,
    AppColor.yellow100,
  ];

  final List<Color> tertiaryColorList = [
    AppColor.pink0,
    AppColor.pink10,
    AppColor.pink20,
    AppColor.pink25,
    AppColor.pink30,
    AppColor.pink35,
    AppColor.pink40,
    AppColor.pink50,
    AppColor.pink60,
    AppColor.pink70,
    AppColor.pink80,
    AppColor.pink90,
    AppColor.pink95,
    AppColor.pink98,
    AppColor.pink99,
    AppColor.pink100,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: Text(AppMessage.current.common_navigation_accounts),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: AppSpace.md12,
            children: [
              _colorPaletteView(),
              _buttonView(),
            ],
          ),
        ),
      );

  Widget _colorPaletteView() {
    Widget colorPallete(List<Color> colorList) => Row(
          children: colorList
              .map(
                (color) => Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.gray50),
                        color: color,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        );
    return Column(
      spacing: AppSpace.sm8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Primary Colors'),
        colorPallete(primaryColorList),
        const Text('Secondary Colors'),
        colorPallete(secondaryColorList),
        const Text('Tertiary Colors'),
        colorPallete(tertiaryColorList),
      ],
    );
  }

  Widget _buttonView() => Column(
        spacing: AppSpace.sm8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('FilledButton'),
          FilledButton(
            onPressed: () {},
            child: const Text('primary'),
          ),
          const FilledButton(
            onPressed: null,
            child: Text('primary'),
          ),
          FilledButton(
            style: FilledButtonStyle.primaryTonal,
            onPressed: () {},
            child: const Text('primaryTonal'),
          ),
          FilledButton(
            style: FilledButtonStyle.primaryTonal,
            onPressed: null,
            child: const Text('primaryTonal'),
          ),
          FilledButton(
            style: FilledButtonStyle.secondary,
            onPressed: () {},
            child: const Text('secondary'),
          ),
          FilledButton(
            style: FilledButtonStyle.secondary,
            onPressed: null,
            child: const Text('secondary'),
          ),
          FilledButton(
            style: FilledButtonStyle.secondaryTonal,
            onPressed: () {},
            child: const Text('secondaryTonal'),
          ),
          FilledButton(
            style: FilledButtonStyle.secondaryTonal,
            onPressed: null,
            child: const Text('secondaryTonal'),
          ),
          FilledButton(
            style: FilledButtonStyle.tertiary,
            onPressed: () {},
            child: const Text('tertiary'),
          ),
          FilledButton(
            style: FilledButtonStyle.tertiary,
            onPressed: null,
            child: const Text('tertiary'),
          ),
          FilledButton(
            style: FilledButtonStyle.tertiaryTonal,
            onPressed: () {},
            child: const Text('tertiaryTonal'),
          ),
          FilledButton(
            style: FilledButtonStyle.tertiaryTonal,
            onPressed: null,
            child: const Text('tertiaryTonal'),
          ),
        ],
      );
}
