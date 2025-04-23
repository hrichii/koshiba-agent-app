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
        "account_delete_success": MessageLookupByLibrary.simpleMessage(
          "Account deleted",
        ),
        "common_sign_in": MessageLookupByLibrary.simpleMessage("Sign in"),
        "common_sign_out": MessageLookupByLibrary.simpleMessage("Sign out"),
        "common_sign_up": MessageLookupByLibrary.simpleMessage("Sign up"),
        "exception_account_not_found": MessageLookupByLibrary.simpleMessage(
          "Account not found",
        ),
        "exception_email_already_in_use": MessageLookupByLibrary.simpleMessage(
          "This email address is already in use",
        ),
        "exception_invalid_email": MessageLookupByLibrary.simpleMessage(
          "Please enter a valid email address",
        ),
        "exception_network_request_failed":
            MessageLookupByLibrary.simpleMessage(
          "Network request failed",
        ),
        "exception_operation_not_allowed": MessageLookupByLibrary.simpleMessage(
          "This operation is not allowed",
        ),
        "exception_server_error": MessageLookupByLibrary.simpleMessage(
          "Server error",
        ),
        "exception_too_many_requests": MessageLookupByLibrary.simpleMessage(
          "Too many requests. Please try again later",
        ),
        "exception_user_token_expired": MessageLookupByLibrary.simpleMessage(
          "User token has expired",
        ),
        "exception_weak_password": MessageLookupByLibrary.simpleMessage(
          "The password is too weak",
        ),
        "field_email": MessageLookupByLibrary.simpleMessage("Email"),
        "field_password": MessageLookupByLibrary.simpleMessage("Password"),
        "sign_out_success": MessageLookupByLibrary.simpleMessage(
          "Sign out completed",
        ),
        "sign_up_success": MessageLookupByLibrary.simpleMessage(
          "Account registration completed",
        ),
        "unit_letter": MessageLookupByLibrary.simpleMessage("characters"),
        "validation_alpha_numeric": m0,
        "validation_max_length": m1,
        "validation_min_length": m2,
        "validation_only_length": m3,
        "validation_required": m4,
        "validation_valid": m5,
      };
}
