import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/extensions/text_style_extension.dart';
import 'package:koshiba_agent_app/core/themes/app_assets.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/core/themes/app_radius.dart';
import 'package:koshiba_agent_app/core/themes/app_space.dart';
import 'package:koshiba_agent_app/core/themes/app_text_theme.dart';
import 'package:koshiba_agent_app/core/themes/button_style/filled_button_style.dart';
import 'package:koshiba_agent_app/core/themes/button_style/outlined_button_style.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/ui/core/extensions/button_style_ext.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_for_password.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_with_scroll.dart';

class SignUpSendPage extends StatelessWidget {
  const SignUpSendPage({
    required this.onSignUp,
    required this.onSignUpWithGoogle,
    required this.onGoSignIn,
    super.key,
  });
  final Future<void> Function(SignIn) onSignUp;
  final Future<void> Function() onSignUpWithGoogle;
  final VoidCallback onGoSignIn;

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: AppColor.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpace.xl24),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: windowWidth > 600 ? 400 : windowWidth - 48,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildHeader(),
                  _buildSignInForm(
                    onSignUp: onSignUp,
                    onSignUpWithGoogle: onSignUpWithGoogle,
                  ),
                  const SizedBox(height: AppSpace.xl24),
                  _buildSignUpLink(onGoSignIn: onGoSignIn),
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
      spacing: AppSpace.xl24,
      children: [_buildLogo(), _buildWelcomeTexts()],
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
        AppMessage.current.common_create_new_account,
        style: AppTextStyle.titleMedium24.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColor.onSurface,
        ),
      ),
      const SizedBox(height: AppSpace.sm8),
      Text(
        AppMessage.current.common_please_create_account,
        style: AppTextStyle.bodyMedium14.copyWith(
          color: AppColor.onSurface.withValues(alpha: 0.7),
        ),
      ),
    ],
  );

  Widget _buildSignInForm({
    required Future<void> Function(SignIn) onSignUp,
    required Future<void> Function() onSignUpWithGoogle,
  }) => Padding(
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
          _buildSignInButton(onSignUp),
          const SizedBox(height: AppSpace.lg16),
          _buildDivider(),
          const SizedBox(height: AppSpace.lg16),
          _buildGoogleSignInButton(onSignUpWithGoogle),
        ],
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

  Widget _buildSignInButton(Future<void> Function(SignIn) onSignIn) =>
      ReactiveSignInFormConsumer(
        builder: (_, form, _) => FilledButton(
          onPressed: form.form.valid ? () => onSignIn(form.model) : null,
          style: FilledButtonStyle.primary.withTextStyle(
            AppTextStyle.bodyLarge16,
          ),
          child: Text(AppMessage.current.common_sign_up),
        ),
      );

  Widget _buildDivider() => Row(
    children: [
      Expanded(child: Divider(color: AppColor.gray90)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpace.lg16),
        child: Text(
          AppMessage.current.common_or,
          style: AppTextStyle.bodySmall12.copyWith(
            color: AppColor.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ),
      Expanded(child: Divider(color: AppColor.gray90)),
    ],
  );

  Widget _buildGoogleSignInButton(Future<void> Function() onSignInWithGoogle) =>
      OutlinedButton.icon(
        onPressed: onSignInWithGoogle,
        style: OutlinedButtonStyle.gray.withPadding(
          const EdgeInsets.symmetric(vertical: AppSpace.lg16),
        ),
        icon: Image.asset(
          AppAssets.imagesGoogleIcon.value,
          width: 20,
          height: 20,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.login, size: 20),
        ),
        label: Text(
          AppMessage.current.common_sign_up_with_google,
          style: AppTextStyle.bodyLarge16.withW600(),
        ),
      );

  Widget _buildSignUpLink({required VoidCallback onGoSignIn}) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        AppMessage.current.common_already_have_account,
        style: AppTextStyle.bodyMedium14.copyWith(
          color: AppColor.onSurface.withValues(alpha: 0.7),
        ),
      ),
      TextButton(
        onPressed: onGoSignIn,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: AppSpace.sm8),
        ),
        child: Text(
          AppMessage.current.common_sign_in,
          style: AppTextStyle.bodyMedium14.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColor.primary,
          ),
        ),
      ),
    ],
  );
}
