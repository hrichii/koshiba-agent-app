import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_for_password.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_with_scroll.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
    required this.onSubmit,
    super.key,
  });
  final Future<void> Function(SignIn) onSubmit;

  @override
  Widget build(BuildContext context) => SignInFormBuilder(
        model: const SignIn(),
        builder: (context, form, _) => Column(
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
                child: Text(AppMessage.current.common_sign_in),
              ),
            ),
          ],
        ),
      );
}
