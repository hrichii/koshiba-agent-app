// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(fieldName) =>
      "Please enter alphanumeric characters for ${fieldName}";

  static String m1(fieldName, maxLength, unit) =>
      "Please enter no more than ${maxLength} ${unit} for ${fieldName}";

  static String m2(fieldName, minLength, unit) =>
      "Please enter at least ${minLength} ${unit} for ${fieldName}";

  static String m3(fieldName, length, unit) =>
      "Please enter exactly ${length} ${unit} for ${fieldName}";

  static String m4(fieldName) => "Please enter ${fieldName}";

  static String m5(fieldName) => "Please enter a valid ${fieldName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "field_email": MessageLookupByLibrary.simpleMessage("Email"),
        "field_password": MessageLookupByLibrary.simpleMessage("Password"),
        "unit_letter": MessageLookupByLibrary.simpleMessage("characters"),
        "validation_alpha_numeric": m0,
        "validation_max_length": m1,
        "validation_min_length": m2,
        "validation_only_length": m3,
        "validation_required": m4,
        "validation_valid": m5,
      };
}
