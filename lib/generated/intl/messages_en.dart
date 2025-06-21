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

  static String m0(fieldName) => "${fieldName}は現在時刻より後の時刻を入力してください";

  static String m1(fieldName) =>
      "Please enter alphanumeric characters for ${fieldName}";

  static String m2(fieldName) =>
      "Please enter a time after the start time for ${fieldName}";

  static String m3(fieldName) =>
      "The email format is invalid. Please enter a valid ${fieldName}";

  static String m4(fieldName, maxLength, unit) =>
      "Please enter no more than ${maxLength} ${unit} for ${fieldName}";

  static String m5(fieldName, minLength, unit) =>
      "Please enter at least ${minLength} ${unit} for ${fieldName}";

  static String m6(fieldName) => "Please enter ${fieldName}";

  static String m7(fieldName) =>
      "The URL format is invalid. Please enter a valid ${fieldName}";

  static String m8(fieldName) => "Please enter a valid ${fieldName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "account_delete_confirm_button_title": MessageLookupByLibrary.simpleMessage(
      "Delete",
    ),
    "account_delete_confirm_title": MessageLookupByLibrary.simpleMessage(
      "Do you want to delete your account?",
    ),
    "account_delete_success": MessageLookupByLibrary.simpleMessage(
      "Account deleted",
    ),
    "common_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "common_change_password": MessageLookupByLibrary.simpleMessage(
      "Change password",
    ),
    "common_connect_for_google": MessageLookupByLibrary.simpleMessage(
      "Connect with Google",
    ),
    "common_connected": MessageLookupByLibrary.simpleMessage("Connected"),
    "common_connected_service": MessageLookupByLibrary.simpleMessage(
      "Connected services",
    ),
    "common_delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "common_delete_account": MessageLookupByLibrary.simpleMessage(
      "Delete account",
    ),
    "common_disconnected": MessageLookupByLibrary.simpleMessage("Disconnected"),
    "common_error_fetch_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to fetch data",
    ),
    "common_invite_bot": MessageLookupByLibrary.simpleMessage("Invite bot"),
    "common_navigation_accounts": MessageLookupByLibrary.simpleMessage(
      "Accounts",
    ),
    "common_navigation_document": MessageLookupByLibrary.simpleMessage(
      "Document",
    ),
    "common_navigation_home": MessageLookupByLibrary.simpleMessage("Home"),
    "common_navigation_schedule": MessageLookupByLibrary.simpleMessage(
      "Schedule",
    ),
    "common_sign_in": MessageLookupByLibrary.simpleMessage("Sign in"),
    "common_sign_in_with_google": MessageLookupByLibrary.simpleMessage(
      "Sign in with Google",
    ),
    "common_sign_out": MessageLookupByLibrary.simpleMessage("Sign out"),
    "common_sign_up": MessageLookupByLibrary.simpleMessage("Sign up"),
    "common_sign_up_with_google": MessageLookupByLibrary.simpleMessage(
      "Sign up with Google",
    ),
    "common_transcription": MessageLookupByLibrary.simpleMessage(
      "Transcription",
    ),
    "common_user": MessageLookupByLibrary.simpleMessage("User"),
    "connect_to_google_success": MessageLookupByLibrary.simpleMessage(
      "Connected to Google successfully",
    ),
    "delete_bot_join_success": MessageLookupByLibrary.simpleMessage(
      "Bot has been removed from the meeting",
    ),
    "disconnect_to_google_confirm_disconnect_button_title":
        MessageLookupByLibrary.simpleMessage("Disconnect"),
    "disconnect_to_google_confirm_title": MessageLookupByLibrary.simpleMessage(
      "Do you want to disconnect from Google?",
    ),
    "disconnect_to_google_success": MessageLookupByLibrary.simpleMessage(
      "Disconnected from Google successfully",
    ),
    "error_api_account_not_found": MessageLookupByLibrary.simpleMessage(
      "Account not found",
    ),
    "error_api_authentication_invalid": MessageLookupByLibrary.simpleMessage(
      "These authentication credentials are invalid",
    ),
    "error_api_bad_request": MessageLookupByLibrary.simpleMessage(
      "Bad request",
    ),
    "error_api_bot_operation_issue": MessageLookupByLibrary.simpleMessage(
      "There was an issue with the bot operation",
    ),
    "error_api_bot_start_time_past": MessageLookupByLibrary.simpleMessage(
      "You cannot specify a past start time. Please specify a future time",
    ),
    "error_api_email_already_used": MessageLookupByLibrary.simpleMessage(
      "This email address is already in use",
    ),
    "error_api_invalid_email": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email address",
    ),
    "error_api_network_request_failed": MessageLookupByLibrary.simpleMessage(
      "Network request failed",
    ),
    "error_api_not_found": MessageLookupByLibrary.simpleMessage(
      "The requested resource was not found",
    ),
    "error_api_operation_not_allowed": MessageLookupByLibrary.simpleMessage(
      "This operation is not allowed",
    ),
    "error_api_resource_already_exists": MessageLookupByLibrary.simpleMessage(
      "The resource already exists",
    ),
    "error_api_resource_unauthorized": MessageLookupByLibrary.simpleMessage(
      "Authentication failed",
    ),
    "error_api_server_issue": MessageLookupByLibrary.simpleMessage(
      "A server issue has occurred",
    ),
    "error_api_token_expired": MessageLookupByLibrary.simpleMessage(
      "The user token has expired",
    ),
    "error_api_too_many_requests": MessageLookupByLibrary.simpleMessage(
      "Too many requests. Please try again later",
    ),
    "error_api_unexpected_response": MessageLookupByLibrary.simpleMessage(
      "An unexpected response was received",
    ),
    "error_api_weak_password": MessageLookupByLibrary.simpleMessage(
      "The password is too weak",
    ),
    "error_client_dio_cancel": MessageLookupByLibrary.simpleMessage(
      "The request was canceled",
    ),
    "error_client_dio_connection": MessageLookupByLibrary.simpleMessage(
      "There is a problem with the network connection",
    ),
    "error_client_dio_timeout": MessageLookupByLibrary.simpleMessage(
      "A timeout has occurred",
    ),
    "error_client_goole_authentication": MessageLookupByLibrary.simpleMessage(
      "Google authentication failed",
    ),
    "error_client_goole_not_yet_authenticated":
        MessageLookupByLibrary.simpleMessage(
          "Google authentication has not yet been completed",
        ),
    "error_client_mobile_not_supported": MessageLookupByLibrary.simpleMessage(
      "Mobile is not supported",
    ),
    "error_client_status_code_2XX": MessageLookupByLibrary.simpleMessage(
      "The request was successful",
    ),
    "error_client_status_code_401": MessageLookupByLibrary.simpleMessage(
      "Authentication is required",
    ),
    "error_client_status_code_407": MessageLookupByLibrary.simpleMessage(
      "Proxy authentication is required",
    ),
    "error_client_status_code_408": MessageLookupByLibrary.simpleMessage(
      "The request timed out",
    ),
    "error_client_status_code_409": MessageLookupByLibrary.simpleMessage(
      "The request has a conflict",
    ),
    "error_client_status_code_413": MessageLookupByLibrary.simpleMessage(
      "The request is too large",
    ),
    "error_client_status_code_414": MessageLookupByLibrary.simpleMessage(
      "The URI is too long",
    ),
    "error_client_status_code_429": MessageLookupByLibrary.simpleMessage(
      "Too many requests",
    ),
    "error_client_status_code_4XX": MessageLookupByLibrary.simpleMessage(
      "The request is invalid",
    ),
    "error_client_status_code_504": MessageLookupByLibrary.simpleMessage(
      "A gateway timeout has occurred",
    ),
    "error_client_status_code_5XX": MessageLookupByLibrary.simpleMessage(
      "An internal server error has occurred",
    ),
    "error_client_unexpected_response": MessageLookupByLibrary.simpleMessage(
      "An unexpected response was received",
    ),
    "error_client_unknow": MessageLookupByLibrary.simpleMessage(
      "An unknown error has occurred",
    ),
    "error_client_web_not_supported": MessageLookupByLibrary.simpleMessage(
      "Web is not supported",
    ),
    "field_email": MessageLookupByLibrary.simpleMessage("Email"),
    "field_meeting_bot_join_timing": MessageLookupByLibrary.simpleMessage(
      "Bot join timing",
    ),
    "field_meeting_description": MessageLookupByLibrary.simpleMessage(
      "Description",
    ),
    "field_meeting_end_at": MessageLookupByLibrary.simpleMessage("End time"),
    "field_meeting_start_at": MessageLookupByLibrary.simpleMessage(
      "Start time",
    ),
    "field_meeting_title": MessageLookupByLibrary.simpleMessage("Title"),
    "field_meeting_url": MessageLookupByLibrary.simpleMessage("Meeting URL"),
    "field_password": MessageLookupByLibrary.simpleMessage("Password"),
    "info_api_bot_status_message_api_request":
        MessageLookupByLibrary.simpleMessage("API request was successful"),
    "info_api_bot_status_message_bot_not_accepted":
        MessageLookupByLibrary.simpleMessage("Bot was not accepted"),
    "info_api_bot_status_message_bot_rejected":
        MessageLookupByLibrary.simpleMessage("Bot was rejected"),
    "info_api_bot_status_message_bot_removed":
        MessageLookupByLibrary.simpleMessage("Bot was removed"),
    "info_api_bot_status_message_call_ended":
        MessageLookupByLibrary.simpleMessage("Call has ended"),
    "info_api_bot_status_message_cannot_join_meeting":
        MessageLookupByLibrary.simpleMessage("Cannot join the meeting"),
    "info_api_bot_status_message_in_call_not_recording":
        MessageLookupByLibrary.simpleMessage("In call (not recording)"),
    "info_api_bot_status_message_in_call_recording":
        MessageLookupByLibrary.simpleMessage("In call (recording)"),
    "info_api_bot_status_message_in_waiting_room":
        MessageLookupByLibrary.simpleMessage("Waiting in the waiting room"),
    "info_api_bot_status_message_initialized":
        MessageLookupByLibrary.simpleMessage("Bot has been initialized"),
    "info_api_bot_status_message_internal_error":
        MessageLookupByLibrary.simpleMessage("Internal error occurred"),
    "info_api_bot_status_message_invalid_meeting_url":
        MessageLookupByLibrary.simpleMessage("Invalid meeting URL"),
    "info_api_bot_status_message_joining_call":
        MessageLookupByLibrary.simpleMessage("Joining the call"),
    "info_api_bot_status_message_meeting_error":
        MessageLookupByLibrary.simpleMessage("Meeting error occurred"),
    "info_api_bot_status_message_no_attendees":
        MessageLookupByLibrary.simpleMessage("No attendees"),
    "info_api_bot_status_message_no_speaker":
        MessageLookupByLibrary.simpleMessage("No speaker"),
    "info_api_bot_status_message_recording_paused":
        MessageLookupByLibrary.simpleMessage("Recording paused"),
    "info_api_bot_status_message_recording_resumed":
        MessageLookupByLibrary.simpleMessage("Recording resumed"),
    "info_api_bot_status_message_recording_timeout":
        MessageLookupByLibrary.simpleMessage("Recording timeout occurred"),
    "info_api_bot_status_message_timeout_waiting_to_start":
        MessageLookupByLibrary.simpleMessage("Timed out waiting to start"),
    "info_api_bot_status_message_unknown_error":
        MessageLookupByLibrary.simpleMessage("Unknown error occurred"),
    "info_api_bot_status_message_waiting_room_timeout":
        MessageLookupByLibrary.simpleMessage("Timed out in waiting room"),
    "info_api_request_success": MessageLookupByLibrary.simpleMessage(
      "Request was successful",
    ),
    "info_google_sign_in_canceled": MessageLookupByLibrary.simpleMessage(
      "Google sign-in was canceled",
    ),
    "meeting_register": MessageLookupByLibrary.simpleMessage(
      "Register meeting",
    ),
    "meeting_register_success": MessageLookupByLibrary.simpleMessage(
      "Meeting registration completed",
    ),
    "schedule_add_meeting_join_right_now": MessageLookupByLibrary.simpleMessage(
      "Join now",
    ),
    "schedule_add_meeting_join_start_time":
        MessageLookupByLibrary.simpleMessage("Join at start time"),
    "schedule_bot_join_success": MessageLookupByLibrary.simpleMessage(
      "Bot has been registered to join the meeting",
    ),
    "schedule_detail_empyty_transcription":
        MessageLookupByLibrary.simpleMessage("No transcription available"),
    "sign_in_by_google_label": MessageLookupByLibrary.simpleMessage(
      "Signed in with Google",
    ),
    "sign_out_confirm_title": MessageLookupByLibrary.simpleMessage(
      "Do you want to sign out?",
    ),
    "sign_out_success": MessageLookupByLibrary.simpleMessage(
      "Sign out completed",
    ),
    "sign_up_success": MessageLookupByLibrary.simpleMessage("Invite the bot"),
    "unit_letter": MessageLookupByLibrary.simpleMessage("characters"),
    "validation_after_current_time": m0,
    "validation_alpha_numeric": m1,
    "validation_before_end_at": m2,
    "validation_email": m3,
    "validation_max_length": m4,
    "validation_min_length": m5,
    "validation_required": m6,
    "validation_url": m7,
    "validation_valid": m8,
  };
}
