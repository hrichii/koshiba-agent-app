import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_use_case.dart';
import 'package:koshiba_agent_app/ui/pages/sign_up_send/sign_up_send_page.dart';
import 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';

class ConnectedSignUpSendPage extends ConsumerWidget {
  const ConnectedSignUpSendPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
    body: SignUpSendPage(
      onSubmit: (signInModel) => ref
          .read(authenticationUseCaseProvider.notifier)
          .signUp(signInModel)
          .withLoaderOverlay()
          .withToastAtError()
          .withToastAtSuccess((_) => AppMessage.current.sign_up_success)
          .onSuccessWithoutValue(const HomeRouteData().go),
    ),
  );
}
