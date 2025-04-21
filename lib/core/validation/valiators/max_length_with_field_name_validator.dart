import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MaxLengthWithFieldNameValidator extends Validator<dynamic> {
  const MaxLengthWithFieldNameValidator({
    required this.fieldNameEnum,
    required this.maxLength,
  });
  final FieldNameEnum fieldNameEnum;
  final int maxLength;

  @override
  Map<String, dynamic>? validate(AbstractControl control) {
    final isInvalid = MaxLengthValidator(maxLength).validate(control) != null;
    if (isInvalid) {
      return {
        ValidationKeyEnum.maxLengthWithFieldName.name: {
          'fieldName': fieldNameEnum.toString(),
          'maxLength': maxLength,
          'unit': fieldNameEnum.unit,
        },
      };
    }
    return null;
  }
}
