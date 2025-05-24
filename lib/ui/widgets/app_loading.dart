import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/constants/app_space.dart';

/// アプリ共通のローディングウィジェット
class AppLoading extends StatelessWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context) => const Center(
        child: Padding(
          padding: EdgeInsets.all(AppSpace.lg16),
          child: CircularProgressIndicator(),
        ),
      );
}
