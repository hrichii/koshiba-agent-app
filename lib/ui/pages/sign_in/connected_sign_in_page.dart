import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_use_case.dart';
import 'package:koshiba_agent_app/ui/core/mover/app_mover.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_for_password.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_with_scroll.dart';
import 'package:koshiba_agent_app/ui/routers/mobile/mobile_router.dart';

class ConnectedSignInPage extends ConsumerWidget {
  const ConnectedSignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> onSignIn(signInModel) => ref
        .read(authenticationUseCaseProvider.notifier)
        .signIn(signInModel)
        .withLoaderOverlay()
        .withToastAtError()
        .onSuccessWithoutValue((_) => AppMover.goCalendar());
    Future<void> onSignInWithGoogle() => ref
        .read(authenticationUseCaseProvider.notifier)
        .signInOrSignUpWithGoogle()
        .withLoaderOverlay()
        .withToastAtError()
        .onSuccessWithoutValue((_) => AppMover.goCalendar());
    return Scaffold(
      body: Center(
        child: SignInFormBuilder(
          model: const SignIn(),
          builder: (context, form, _) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ReactiveTextFieldWithScroll<String>(
                formControl: form.emailControl,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: AppMessage.current.field_email,
                ),
              ),
              ReactiveTextFieldForPassword(
                formControl: form.passwordControl,
                onSubmitted: (_) {},
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.key_outlined),
                  hintText: AppMessage.current.field_password,
                ),
              ),
              ReactiveSignInFormConsumer(
                builder: (_, form, _) => FilledButton(
                  onPressed: form.form.valid
                      ? () => onSignIn(form.model)
                      : null,
                  child: Text(AppMessage.current.common_sign_in),
                ),
              ),
              FilledButton(
                onPressed: onSignInWithGoogle,
                child: Text(AppMessage.current.common_sign_in_with_google),
              ),
              TextButton(
                onPressed: () => const SignUpSendRouteData().go(context),
                child: Text(AppMessage.current.common_sign_up),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
