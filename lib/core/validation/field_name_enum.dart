import 'package:koshiba_agent_app/generated/l10n.dart';

enum FieldNameEnum {
  email,
  password;

  @override
  String toString() => switch (this) {
        FieldNameEnum.email => AppMessage.current.field_email,
        FieldNameEnum.password => AppMessage.current.field_password,
      };

  String get unit => switch (this) {
        _ => AppMessage.current.unit_letter,
      };
}
