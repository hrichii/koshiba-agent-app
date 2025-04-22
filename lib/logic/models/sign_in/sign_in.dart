import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/core/validation/app_validation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'sign_in.freezed.dart';
part 'sign_in.g.dart';
part 'sign_in.gform.dart';

@freezed
@Rf()
abstract class SignIn with _$SignIn {
  const factory SignIn({
    @RfControl(validators: AppValidation.email) String? email,
    @RfControl(validators: AppValidation.password) String? password,
  }) = _SignIn;

  const SignIn._();

  factory SignIn.fromJson(Map<String, dynamic> json) => _$SignInFromJson(json);
}
