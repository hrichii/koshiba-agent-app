import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:string_validator/string_validator.dart';

class UriWithFieldNameValidator extends Validator<dynamic> {
  const UriWithFieldNameValidator({required this.fieldNameEnum});
  final FieldNameEnum fieldNameEnum;

  @override
  Map<String, dynamic>? validate(AbstractControl control) {
    if (control.value is! String || control.value.isEmpty) {
      return null;
    }
    final isInValid = !control.value.toString().isURL();
    if (isInValid) {
      return {
        ValidationKeyEnum.urlWithFieldName.name: {
          'fieldName': fieldNameEnum.toString(),
        },
      };
    }
    return null;
  }
}
