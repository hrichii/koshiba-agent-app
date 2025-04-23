// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static String m0(fieldName) => "${fieldName}は英数字を入力してください";

  static String m1(fieldName, maxLength, unit) =>
      "${fieldName}は${maxLength}${unit}以下で入力してください";

  static String m2(fieldName, minLength, unit) =>
      "${fieldName}は${minLength}${unit}以上を入力してください";

  static String m3(fieldName, length, unit) =>
      "${fieldName}は${length}${unit}で入力してください";

  static String m4(fieldName) => "${fieldName}を入力してください";

  static String m5(fieldName) => "有効な${fieldName}を入力してください";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account_delete_success": MessageLookupByLibrary.simpleMessage(
          "アカウントを削除しました",
        ),
        "common_sign_in": MessageLookupByLibrary.simpleMessage("サインイン"),
        "common_sign_out": MessageLookupByLibrary.simpleMessage("サインアウト"),
        "common_sign_up": MessageLookupByLibrary.simpleMessage("サインアップ"),
        "exception_account_not_found": MessageLookupByLibrary.simpleMessage(
          "アカウントが見つかりません",
        ),
        "exception_email_already_in_use": MessageLookupByLibrary.simpleMessage(
          "このメールアドレスは既に使用されています",
        ),
        "exception_invalid_credential": MessageLookupByLibrary.simpleMessage(
          "この認証情報は無効です",
        ),
        "exception_invalid_email": MessageLookupByLibrary.simpleMessage(
          "有効なメールアドレスを入力してください",
        ),
        "exception_network_request_failed":
            MessageLookupByLibrary.simpleMessage(
          "ネットワークリクエストが失敗しました",
        ),
        "exception_operation_not_allowed": MessageLookupByLibrary.simpleMessage(
          "この操作は許可されていません",
        ),
        "exception_too_many_requests": MessageLookupByLibrary.simpleMessage(
          "リクエストが多すぎます。しばらく待ってから再試行してください",
        ),
        "exception_unknown":
            MessageLookupByLibrary.simpleMessage("不明なエラーが発生しました"),
        "exception_user_token_expired": MessageLookupByLibrary.simpleMessage(
          "ユーザートークンの有効期限が切れました",
        ),
        "exception_weak_password": MessageLookupByLibrary.simpleMessage(
          "パスワードが脆弱です",
        ),
        "field_email": MessageLookupByLibrary.simpleMessage("メールアドレス"),
        "field_password": MessageLookupByLibrary.simpleMessage("パスワード"),
        "sign_out_success": MessageLookupByLibrary.simpleMessage("サインアウトしました"),
        "sign_up_success":
            MessageLookupByLibrary.simpleMessage("アカウント登録が完了しました"),
        "unit_letter": MessageLookupByLibrary.simpleMessage("文字"),
        "validation_alpha_numeric": m0,
        "validation_max_length": m1,
        "validation_min_length": m2,
        "validation_only_length": m3,
        "validation_required": m4,
        "validation_valid": m5,
      };
}
