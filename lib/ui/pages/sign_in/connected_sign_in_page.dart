import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koshiba_agent_app/core/extensions/future_ext.dart';
import 'package:koshiba_agent_app/core/extensions/future_result_ext.dart';
import 'package:koshiba_agent_app/core/themes/app_assets.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpace.xl24),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: size.width > 600 ? 400 : size.width - 48,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildHeader(),
                  _buildSignInForm(
                    onSignIn: (model) => _onSignIn(ref, model),
                    onSignInWithGoogle: () => _onSignInWithGoogle(ref),
                  ),
                  const SizedBox(height: AppSpace.xl24),
                  _buildSignUpLink(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() => Container(
    margin: const EdgeInsets.only(bottom: 48),
    child: Column(
      children: [
        _buildLogo(),
        const SizedBox(height: AppSpace.xl24),
        _buildWelcomeTexts(),
      ],
    ),
  );

  Widget _buildLogo() => Image.asset(
    AppAssets.imagesAppHeaderLogo.value,
    fit: BoxFit.contain,
    width: 120,
    errorBuilder: (context, error, stackTrace) =>
        Icon(Icons.account_circle, size: 80, color: AppColor.primary),
  );

  Widget _buildWelcomeTexts() => Column(
    children: [
      Text(
        AppMessage.current.common_welcome,
        style: AppTextStyle.titleMedium24.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColor.onSurface,
        ),
      ),
      const SizedBox(height: AppSpace.sm8),
      Text(
        AppMessage.current.common_please_sign_in_to_account,
        style: AppTextStyle.bodyMedium14.copyWith(
          color: AppColor.onSurface.withValues(alpha: 0.7),
        ),
      ),
    ],
  );

  Widget _buildSignInForm({
    required void Function(dynamic) onSignIn,
    required VoidCallback onSignInWithGoogle,
  }) => Card(
    elevation: 8,
    shadowColor: AppColor.shadow.withValues(alpha: 0.1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppRadius.xl16),
    ),
    child: Padding(
      padding: const EdgeInsets.all(AppSpace.xl24),
      child: SignInFormBuilder(
        model: const SignIn(),
        builder: (context, form, _) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildEmailField(),
            const SizedBox(height: AppSpace.lg16),
            _buildPasswordField(),
            const SizedBox(height: AppSpace.xll32),
            _buildSignInButton(onSignIn),
            const SizedBox(height: AppSpace.lg16),
            _buildDivider(),
            const SizedBox(height: AppSpace.lg16),
            _buildGoogleSignInButton(onSignInWithGoogle),
          ],
        ),
      ),
    ),
  );

  Widget _buildEmailField() => ReactiveSignInFormConsumer(
    builder: (context, form, _) => ReactiveTextFieldWithScroll<String>(
      formControl: form.emailControl,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: _buildInputDecoration(
        labelText: AppMessage.current.field_email,
        prefixIcon: Icons.email_outlined,
      ),
    ),
  );

  Widget _buildPasswordField() => ReactiveSignInFormConsumer(
    builder: (context, form, _) => ReactiveTextFieldForPassword(
      formControl: form.passwordControl,
      onSubmitted: (_) {},
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      decoration: _buildInputDecoration(
        labelText: AppMessage.current.field_password,
        prefixIcon: Icons.lock_outlined,
      ),
    ),
  );

  InputDecoration _buildInputDecoration({
    required String labelText,
    required IconData prefixIcon,
  }) => InputDecoration(
    labelText: labelText,
    prefixIcon: Icon(prefixIcon, color: AppColor.primary),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.lg12),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.lg12),
      borderSide: BorderSide(color: AppColor.outline.withValues(alpha: 0.3)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.lg12),
      borderSide: BorderSide(color: AppColor.primary, width: 2),
    ),
    filled: true,
    fillColor: AppColor.surface,
  );

  Widget _buildSignInButton(void Function(dynamic) onSignIn) =>
      ReactiveSignInFormConsumer(
        builder: (_, form, _) => FilledButton(
          onPressed: form.form.valid ? () => onSignIn(form.model) : null,
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: AppSpace.lg16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.lg12),
            ),
            elevation: 2,
          ),
          child: Text(
            AppMessage.current.common_sign_in,
            style: AppTextStyle.bodyLarge16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );

  Widget _buildDivider() => Row(
    children: [
      Expanded(child: Divider(color: AppColor.outline.withValues(alpha: 0.3))),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpace.lg16),
        child: Text(
          AppMessage.current.common_or,
          style: AppTextStyle.bodySmall12.copyWith(
            color: AppColor.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ),
      Expanded(child: Divider(color: AppColor.outline.withValues(alpha: 0.3))),
    ],
  );

  Widget _buildGoogleSignInButton(VoidCallback onSignInWithGoogle) =>
      OutlinedButton.icon(
        onPressed: onSignInWithGoogle,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: AppSpace.lg16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg12),
          ),
          side: BorderSide(color: AppColor.outline.withValues(alpha: 0.3)),
        ),
        icon: Image.asset(
          AppAssets.imagesGoogleIcon.value,
          width: 20,
          height: 20,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.login, size: 20),
        ),
        label: Text(
          AppMessage.current.common_sign_in_with_google,
          style: AppTextStyle.bodyLarge16.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColor.onSurface,
          ),
        ),
      );

  Widget _buildSignUpLink(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        AppMessage.current.common_no_account_yet,
        style: AppTextStyle.bodyMedium14.copyWith(
          color: AppColor.onSurface.withValues(alpha: 0.7),
        ),
      ),
      TextButton(
        onPressed: () => const SignUpSendRouteData().go(context),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: AppSpace.sm8),
        ),
        child: Text(
          AppMessage.current.common_sign_up,
          style: AppTextStyle.bodyMedium14.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColor.primary,
          ),
        ),
      ),
    ],
  );

  Future<void> _onSignIn(WidgetRef ref, signInModel) => ref
      .read(authenticationUseCaseProvider.notifier)
      .signIn(signInModel)
      .withLoaderOverlay()
      .withToastAtError()
      .onSuccessWithoutValue((_) => AppMover.goCalendar());

  Future<void> _onSignInWithGoogle(WidgetRef ref) => ref
      .read(authenticationUseCaseProvider.notifier)
      .signInOrSignUpWithGoogle()
      .withLoaderOverlay()
      .withToastAtError()
      .onSuccessWithoutValue((_) => AppMover.goCalendar());
}
