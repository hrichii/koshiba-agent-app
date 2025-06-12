import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/themes/firebase_options.dart';
import 'package:koshiba_agent_app/core/utils/platform/mobile/configure_url.dart'
    if (dart.library.html) 'package:koshiba_agent_app/core/utils/platform/web/configure_url.dart';
import 'package:koshiba_agent_app/ui/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureUrl();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
