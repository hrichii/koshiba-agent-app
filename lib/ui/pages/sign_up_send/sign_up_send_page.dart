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
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';
import 'package:koshiba_agent_app/logic/models/result/result.dart';
import 'package:koshiba_agent_app/logic/models/sign_in/sign_in.dart';
import 'package:koshiba_agent_app/logic/models/user_credential/app_user_credential.dart';
import 'package:koshiba_agent_app/logic/usecases/authentication/authentication_use_case.dart';
import 'package:koshiba_agent_app/ui/core/mover/app_mover.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_for_password.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_with_scroll.dart';

class SignUpSendPage extends ConsumerWidget {
  const SignUpSendPage({required this.onSubmit, super.key});
  final Future<void> Function(SignIn) onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
    backgroundColor: AppColor.surface,
    body: SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth > 600;

          return Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(
                isDesktop ? AppSpace.xll32 : AppSpace.xl24,
              ),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: isDesktop ? 500 : double.infinity,
                ),
                child: _buildSignUpCard(context, ref, isDesktop),
              ),
            ),
          );
        },
      ),
    ),
  );

  Widget _buildSignUpCard(
    BuildContext context,
    WidgetRef ref,
    bool isDesktop,
  ) => Card(
    elevation: isDesktop ? 8 : 0,
    color: AppColor.surface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppRadius.xl16),
    ),
    child: Padding(
      padding: EdgeInsets.all(isDesktop ? AppSpace.xll32 : AppSpace.xl24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeader(),
          const SizedBox(height: AppSpace.xll32),
          _buildSignUpForm(
            onSubmit: onSubmit,
            onSignUpWithGoogle: () => _handleGoogleSignUp(ref),
          ),
          const SizedBox(height: AppSpace.xl24),
          _buildSignInRedirect(),
        ],
      ),
    ),
  );

  Widget _buildHeader() => Column(
    children: [
      Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.xl16),
          color: AppColor.primary.withValues(alpha: 0.1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppRadius.xl16),
          child: Image.asset(AppAssets.imagesAppIcon.value, fit: BoxFit.cover),
        ),
      ),
      const SizedBox(height: AppSpace.lg16),
      Text(
        AppMessage.current.common_create_new_account,
        style: AppTextTheme.normal.titleLarge?.copyWith(
          color: AppColor.onSurface,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: AppSpace.sm8),
      Text(
        AppMessage.current.common_please_create_account,
        style: AppTextTheme.normal.bodyLarge?.copyWith(
          color: AppColor.onSurface.withValues(alpha: 0.7),
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );

  Widget _buildSignUpForm({
    required Future<void> Function(SignIn) onSubmit,
    required VoidCallback onSignUpWithGoogle,
  }) => SignInFormBuilder(
    model: const SignIn(),
    builder: (context, form, _) => Column(
      children: [
        _buildEmailField(form),
        const SizedBox(height: AppSpace.lg16),
        _buildPasswordField(form),
        const SizedBox(height: AppSpace.xl24),
        _buildSignUpButton(form, onSubmit),
        const SizedBox(height: AppSpace.lg16),
        _buildDivider(),
        const SizedBox(height: AppSpace.lg16),
        _buildGoogleSignUpButton(onSignUpWithGoogle),
      ],
    ),
  );

  Widget _buildEmailField(SignInForm form) =>
      ReactiveTextFieldWithScroll<String>(
        formControl: form.emailControl,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email_outlined, color: AppColor.primary),
          hintText: AppMessage.current.field_email,
          filled: true,
          fillColor: AppColor.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg12),
            borderSide: BorderSide(color: AppColor.outline),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg12),
            borderSide: BorderSide(color: AppColor.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg12),
            borderSide: BorderSide(color: AppColor.primary, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg12),
            borderSide: BorderSide(color: AppColor.error),
          ),
        ),
      );

  Widget _buildPasswordField(SignInForm form) => ReactiveTextFieldForPassword(
    formControl: form.passwordControl,
    onSubmitted: (_) {},
    textInputAction: TextInputAction.done,
    keyboardType: TextInputType.visiblePassword,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.key_outlined, color: AppColor.primary),
      hintText: AppMessage.current.field_password,
      filled: true,
      fillColor: AppColor.surface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg12),
        borderSide: BorderSide(color: AppColor.outline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg12),
        borderSide: BorderSide(color: AppColor.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg12),
        borderSide: BorderSide(color: AppColor.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg12),
        borderSide: BorderSide(color: AppColor.error),
      ),
    ),
  );

  Widget _buildSignUpButton(
    SignInForm form,
    Future<void> Function(SignIn) onSubmit,
  ) => ReactiveSignInFormConsumer(
    builder: (context, form, _) => SizedBox(
      width: double.infinity,
      height: 56,
      child: FilledButton(
        onPressed: form.form.valid ? () => onSubmit(form.model) : null,
        style: FilledButton.styleFrom(
          backgroundColor: AppColor.primary,
          foregroundColor: AppColor.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.lg12),
          ),
        ),
        child: Text(
          AppMessage.current.common_sign_up,
          style: AppTextTheme.normal.bodyLarge?.copyWith(
            color: AppColor.onPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );

  Widget _buildDivider() => Row(
    children: [
      Expanded(child: Divider(color: AppColor.outline, thickness: 1)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpace.lg16),
        child: Text(
          AppMessage.current.common_or,
          style: AppTextTheme.normal.bodySmall?.copyWith(
            color: AppColor.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ),
      Expanded(child: Divider(color: AppColor.outline, thickness: 1)),
    ],
  );

  Widget _buildGoogleSignUpButton(VoidCallback onSignUpWithGoogle) => SizedBox(
    width: double.infinity,
    height: 56,
    child: OutlinedButton.icon(
      onPressed: onSignUpWithGoogle,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColor.onSurface,
        side: BorderSide(color: AppColor.outline),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg12),
        ),
      ),
      icon: const Icon(Icons.login, size: 20),
      label: Text(
        AppMessage.current.common_sign_up_with_google,
        style: AppTextTheme.normal.bodyLarge?.copyWith(
          color: AppColor.onSurface,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );

  Widget _buildSignInRedirect() => Builder(
    builder: (context) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppMessage.current.common_already_have_account,
          style: AppTextTheme.normal.bodyMedium?.copyWith(
            color: AppColor.onSurface.withValues(alpha: 0.7),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          style: TextButton.styleFrom(
            foregroundColor: AppColor.primary,
            padding: const EdgeInsets.symmetric(horizontal: AppSpace.sm8),
          ),
          child: Text(
            AppMessage.current.common_sign_in,
            style: AppTextTheme.normal.bodyMedium?.copyWith(
              color: AppColor.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );

  Future<Result<AppUserCredential, AppMessageCode>> _handleGoogleSignUp(
    WidgetRef ref,
  ) async => ref
      .read(authenticationUseCaseProvider.notifier)
      .signInOrSignUpWithGoogle()
      .withLoaderOverlay()
      .withToastAtError()
      .onSuccessWithoutValue((_) => AppMover.goCalendar());
}
