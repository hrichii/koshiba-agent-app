import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MinLengthWithFieldNameValidator extends Validator<dynamic> {
  const MinLengthWithFieldNameValidator({
    required this.fieldNameEnum,
    required this.minLength,
  });
  final FieldNameEnum fieldNameEnum;
  final int minLength;

  @override
  Map<String, dynamic>? validate(AbstractControl control) {
    final isInvalid = MinLengthValidator(minLength).validate(control) != null;
    if (isInvalid) {
      return {
        ValidationKeyEnum.minLengthWithFieldName.name: {
          'fieldName': fieldNameEnum.toString(),
          'minLength': minLength,
          'unit': fieldNameEnum.unit,
        },
      };
    }
    return null;
  }
}
