import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EmailWithFieldNameValidator extends Validator<dynamic> {
  const EmailWithFieldNameValidator({required this.fieldNameEnum});
  final FieldNameEnum fieldNameEnum;

  @override
  Map<String, dynamic>? validate(AbstractControl control) {
    final isInvalid = const EmailValidator().validate(control) != null;
    if (isInvalid) {
      return {
        ValidationKeyEnum.emailWithFieldName.name: {
          'fieldName': fieldNameEnum.toString(),
        },
      };
    }
    return null;
  }
}
