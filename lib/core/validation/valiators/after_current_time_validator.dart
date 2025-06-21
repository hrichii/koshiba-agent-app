import 'package:koshiba_agent_app/core/validation/field_name_enum.dart';
import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AfterCurrentTimeValidator extends Validator<dynamic> {
  const AfterCurrentTimeValidator({required this.fieldNameEnum});
  final FieldNameEnum fieldNameEnum;

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final value = control.value;
    if (value is DateTime) {
      final now = DateTime.now();
      if (value.isBefore(now)) {
        return {
          ValidationKeyEnum.afterCurrentTime.name: {
            'fieldName': fieldNameEnum.toString(),
          },
        };
      }
    }
    return null;
  }
}
