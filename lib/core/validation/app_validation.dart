import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/valiators/alpha_numeric_with_field_name_validator.dart';
import 'package:koshiba_agent_app/core/validation/valiators/email_with_field_name_validator.dart';
import 'package:koshiba_agent_app/core/validation/valiators/max_length_with_field_name_validator.dart';
import 'package:koshiba_agent_app/core/validation/valiators/min_length_with_field_name_validator.dart';
import 'package:koshiba_agent_app/core/validation/valiators/required_with_field_name_validator.dart';
import 'package:koshiba_agent_app/core/validation/valiators/uri_with_field_name_validator.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppValidation {
  static const List<Validator> email = [
    RequiredWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.email,
    ),
    MaxLengthWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.email,
      maxLength: 5000,
    ),
    EmailWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.email,
    ),
  ];

  static const List<Validator> password = [
    RequiredWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.password,
    ),
    MinLengthWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.password,
      minLength: 8,
    ),
    MaxLengthWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.password,
      maxLength: 100,
    ),
    AlphaNumericWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.password,
    ),
  ];

  static const List<Validator> meetingUri = [
    RequiredWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.meetingUrl,
    ),
    UriWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.meetingUrl,
    ),
  ];

  static const List<Validator> meetingStartAt = [
    RequiredWithFieldNameValidator(
      fieldNameEnum: FieldNameEnum.meetingUrl,
    ),
  ];
}
