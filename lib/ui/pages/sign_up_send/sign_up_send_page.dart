import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/app_user_credential.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_use_case.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_for_password.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_with_scroll.dart';
import 'package:koshiba_agent_app/ui/routers/router.dart';

class SignUpSendPage extends ConsumerWidget {
  const SignUpSendPage({
    required this.onSubmit,
    super.key,
  });
  final Future<void> Function(SignIn) onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<Result<AppUserCredential, AppMessageCode>> onSignUpWithGoogle() =>
        ref
            .read(authenticationUseCaseProvider.notifier)
            .signInOrSignUpWithGoogle()
            .withLoaderOverlay()
            .withToastAtError()
            .onSuccessWithoutValue(const HomeRouteData().go);
    return Center(
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
              builder: (_, form, ___) => FilledButton(
                onPressed: () => onSubmit(form.model),
                child: Text(AppMessage.current.common_sign_up),
              ),
            ),
            FilledButton(
              onPressed: onSignUpWithGoogle,
              child: Text(AppMessage.current.common_sign_up_with_google),
            ),
          ],
        ),
      ),
    );
  }
}
