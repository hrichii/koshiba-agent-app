import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RequiredWithFieldNameValidator extends Validator<dynamic> {
  const RequiredWithFieldNameValidator({required this.fieldNameEnum});
  final FieldNameEnum fieldNameEnum;

  @override
  Map<String, dynamic>? validate(AbstractControl control) {
    final isInvalid = const RequiredValidator().validate(control) != null;
    if (isInvalid) {
      return {
        ValidationKeyEnum.requiredWithFieldName.name: {
          'fieldName': fieldNameEnum.toString(),
        },
      };
    }
    return null;
  }
}
