import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/utils/platform/mobile/configure_url.dart'
    if (dart.library.html) 'package:koshiba_agent_app/core/utils/platform/web/configure_url.dart';
import 'package:koshiba_agent_app/ui/app.dart';

void main() {
  configureUrl();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
