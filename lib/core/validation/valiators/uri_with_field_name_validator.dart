import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UriWithFieldNameValidator extends Validator<dynamic> {
  const UriWithFieldNameValidator({required this.fieldNameEnum});
  final FieldNameEnum fieldNameEnum;

  @override
  Map<String, dynamic>? validate(AbstractControl control) {
    final isInvalid = control.value != null &&
        control.value.isNotEmpty &&
        Uri.tryParse(control.value) == null;
    if (isInvalid) {
      return {
        ValidationKeyEnum.urlWithFieldName.name: {
          'fieldName': fieldNameEnum.toString(),
        },
      };
    }
    return null;
  }
}
