import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_use_case.dart';
import 'package:koshiba_agent_app/ui/core/mover/app_mover.dart';
import 'package:koshiba_agent_app/ui/core/toast/toast.dart';
import 'package:koshiba_agent_app/ui/pages/sign_in/sign_in_page.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class ConnectedSignInPage extends ConsumerWidget {
  const ConnectedSignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => SignInPage(
    onSignIn: (signInModel) => ref
        .read(authenticationUseCaseProvider.notifier)
        .signIn(signInModel)
        .withLoaderOverlay()
        .onSuccess((_) => AppMover.goCalendar())
        .onError(Toast().showErrorByMessagecode),
    onSignInWithGoogle: () => ref
        .read(authenticationUseCaseProvider.notifier)
        .signInOrSignUpWithGoogle()
        .withLoaderOverlay()
        .onSuccess((_) => AppMover.goCalendar())
        .onError(Toast().showErrorByMessagecode),
    onGoSignUp: AppMover.goSignUp,
  );
}
