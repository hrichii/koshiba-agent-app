import 'package:koshiba_agent_app/core/validation/validation_key_enum.dart';
import 'package:koshiba_agent_app/generated/l10n.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class AppReactiveFormConfig extends StatelessWidget {
  const AppReactiveFormConfig({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) => ReactiveFormConfig(
        validationMessages: {
          ValidationKeyEnum.alphaNumericWithFieldName.name: (error) =>
              AppMessage.current.validation_alpha_numeric(
                (error as Map)['fieldName'],
              ),
          ValidationKeyEnum.emailWithFieldName.name: (error) =>
              AppMessage.current.validation_email(
                (error as Map)['fieldName'],
              ),
          ValidationKeyEnum.maxLengthWithFieldName.name: (error) =>
              AppMessage.current.validation_max_length(
                (error as Map)['fieldName'],
                error['maxLength'],
                error['unit'],
              ),
          ValidationKeyEnum.minLengthWithFieldName.name: (error) =>
              AppMessage.current.validation_min_length(
                (error as Map)['fieldName'],
                error['minLength'],
                error['unit'],
              ),
          ValidationKeyEnum.requiredWithFieldName.name: (error) => AppMessage
              .current
              .validation_required((error as Map)['fieldName']),
          ValidationKeyEnum.urlWithFieldName.name: (error) =>
              AppMessage.current.validation_url((error as Map)['fieldName']),
        },
        child: child,
      );
}
