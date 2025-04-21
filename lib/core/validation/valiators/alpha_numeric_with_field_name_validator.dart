import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AlphaNumericWithFieldNameValidator extends Validator<dynamic> {
  const AlphaNumericWithFieldNameValidator({required this.fieldNameEnum});
  final FieldNameEnum fieldNameEnum;
  static final RegExp _pattern = RegExp(r'^[a-zA-Z0-9]+$');

  @override
  Map<String, dynamic>? validate(AbstractControl control) {
    final value = control.value as String?;

    if (value == null || value.isEmpty) {
      return null;
    }

    if (!_pattern.hasMatch(value)) {
      return {
        ValidationKeyEnum.alphaNumericWithFieldName.name: {
          'fieldName': fieldNameEnum.toString(),
        },
      };
    }
    return null;
  }
}
