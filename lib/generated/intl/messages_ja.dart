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
        "error_api_account_not_found": MessageLookupByLibrary.simpleMessage(
          "アカウントが見つかりません",
        ),
        "error_api_authentication_invalid":
            MessageLookupByLibrary.simpleMessage(
          "この認証情報は無効です",
        ),
        "error_api_bad_request":
            MessageLookupByLibrary.simpleMessage("リクエストが不正です"),
        "error_api_email_already_used": MessageLookupByLibrary.simpleMessage(
          "メールアドレスは既に使用されています",
        ),
        "error_api_invalid_email": MessageLookupByLibrary.simpleMessage(
          "有効なメールアドレスを入力してください",
        ),
        "error_api_network_request_failed":
            MessageLookupByLibrary.simpleMessage(
          "ネットワークリクエストが失敗しました",
        ),
        "error_api_operation_not_allowed": MessageLookupByLibrary.simpleMessage(
          "この操作は許可されていません",
        ),
        "error_api_resource_already_exists":
            MessageLookupByLibrary.simpleMessage(
          "リソースが既に存在します",
        ),
        "error_api_server_issue": MessageLookupByLibrary.simpleMessage(
          "サーバーに問題が発生しました",
        ),
        "error_api_token_expired": MessageLookupByLibrary.simpleMessage(
          "ユーザートークンの有効期限が切れました",
        ),
        "error_api_too_many_requests": MessageLookupByLibrary.simpleMessage(
          "リクエストが多すぎます。しばらく待ってから再試行してください",
        ),
        "error_api_unexpected_response": MessageLookupByLibrary.simpleMessage(
          "想定外のレスポンスを取得しました",
        ),
        "error_api_weak_password": MessageLookupByLibrary.simpleMessage(
          "パスワードが脆弱です",
        ),
        "error_client_dio_cancel": MessageLookupByLibrary.simpleMessage(
          "キャンセルされました",
        ),
        "error_client_dio_connection": MessageLookupByLibrary.simpleMessage(
          "ネットワークの接続に問題があります。",
        ),
        "error_client_dio_timeout": MessageLookupByLibrary.simpleMessage(
          "タイムアウトが発生しました",
        ),
        "error_client_status_code_2XX": MessageLookupByLibrary.simpleMessage(
          "リクエストに成功しました。",
        ),
        "error_client_status_code_401": MessageLookupByLibrary.simpleMessage(
          "認証情報が必要です。",
        ),
        "error_client_status_code_407": MessageLookupByLibrary.simpleMessage(
          "プロキシ認証が必要です。",
        ),
        "error_client_status_code_408": MessageLookupByLibrary.simpleMessage(
          "リクエストタイムアウトが発生しました。",
        ),
        "error_client_status_code_409": MessageLookupByLibrary.simpleMessage(
          "リクエストが競合しています。",
        ),
        "error_client_status_code_413": MessageLookupByLibrary.simpleMessage(
          "リクエストが大きすぎます。",
        ),
        "error_client_status_code_414": MessageLookupByLibrary.simpleMessage(
          "URIが長すぎます。",
        ),
        "error_client_status_code_429": MessageLookupByLibrary.simpleMessage(
          "リクエストが多すぎます。",
        ),
        "error_client_status_code_4XX": MessageLookupByLibrary.simpleMessage(
          "不正なリクエストです。",
        ),
        "error_client_status_code_504": MessageLookupByLibrary.simpleMessage(
          "ゲートウェイタイムアウトが発生しました。",
        ),
        "error_client_status_code_5XX": MessageLookupByLibrary.simpleMessage(
          "サーバー内部でエラーが発生しました。",
        ),
        "error_client_unexpected_response":
            MessageLookupByLibrary.simpleMessage(
          "想定外のレスポンスを取得しました",
        ),
        "error_client_unknow": MessageLookupByLibrary.simpleMessage(
          "不明なエラーが発生しました",
        ),
        "field_email": MessageLookupByLibrary.simpleMessage("メールアドレス"),
        "field_meeting_url": MessageLookupByLibrary.simpleMessage("ミーティングURL"),
        "field_password": MessageLookupByLibrary.simpleMessage("パスワード"),
        "info_api_request_success": MessageLookupByLibrary.simpleMessage(
          "リクエストに成功しました",
        ),
        "meeting_register": MessageLookupByLibrary.simpleMessage("ミーティングを登録する"),
        "meeting_register_success": MessageLookupByLibrary.simpleMessage(
          "ミーティング登録が完了しました",
        ),
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
