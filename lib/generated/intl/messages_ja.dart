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

  static String m0(fieldName) => "${fieldName}は現在時刻より後の時刻を入力してください";

  static String m1(fieldName) => "${fieldName}は英数字を入力してください";

  static String m2(fieldName) => "${fieldName}は開始時刻より後の時刻を入力してください";

  static String m3(fieldName) => "メールアドレスの形式に不正があります。有効な${fieldName}を入力してください";

  static String m4(fieldName, maxLength, unit) =>
      "${fieldName}は${maxLength}${unit}以下で入力してください";

  static String m5(fieldName, minLength, unit) =>
      "${fieldName}は${minLength}${unit}以上を入力してください";

  static String m6(fieldName) => "${fieldName}を入力してください";

  static String m7(fieldName) => "URLの形式に不正があります。有効な${fieldName}を入力してください";

  static String m8(fieldName) => "有効な${fieldName}を入力してください";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "account_delete_confirm_button_title": MessageLookupByLibrary.simpleMessage(
      "削除する",
    ),
    "account_delete_confirm_title": MessageLookupByLibrary.simpleMessage(
      "アカウントを削除しますか？",
    ),
    "account_delete_success": MessageLookupByLibrary.simpleMessage(
      "アカウントを削除しました",
    ),
    "common_already_have_account": MessageLookupByLibrary.simpleMessage(
      "すでにアカウントをお持ちの方は",
    ),
    "common_bot": MessageLookupByLibrary.simpleMessage("ジャービス"),
    "common_bot_wake": MessageLookupByLibrary.simpleMessage("ジャービスに質問する"),
    "common_cancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
    "common_change_password": MessageLookupByLibrary.simpleMessage("パスワード変更"),
    "common_connect_for_google": MessageLookupByLibrary.simpleMessage(
      "Googleのサービスと連携",
    ),
    "common_connected": MessageLookupByLibrary.simpleMessage("連携済み"),
    "common_connected_service": MessageLookupByLibrary.simpleMessage("連携サービス"),
    "common_create_new_account": MessageLookupByLibrary.simpleMessage(
      "新しいアカウントを作成",
    ),
    "common_delete": MessageLookupByLibrary.simpleMessage("削除する"),
    "common_delete_account": MessageLookupByLibrary.simpleMessage("アカウント削除"),
    "common_disconnected": MessageLookupByLibrary.simpleMessage("未連携"),
    "common_error_fetch_failed": MessageLookupByLibrary.simpleMessage("取得失敗"),
    "common_invite_bot": MessageLookupByLibrary.simpleMessage("会議に招待"),
    "common_navigation_accounts": MessageLookupByLibrary.simpleMessage("アカウント"),
    "common_navigation_document": MessageLookupByLibrary.simpleMessage(
      "ドキュメント",
    ),
    "common_navigation_home": MessageLookupByLibrary.simpleMessage("ホーム"),
    "common_navigation_schedule": MessageLookupByLibrary.simpleMessage(
      "スケジュール",
    ),
    "common_no_account_yet": MessageLookupByLibrary.simpleMessage(
      "アカウントをお持ちでない方は",
    ),
    "common_or": MessageLookupByLibrary.simpleMessage("または"),
    "common_please_create_account": MessageLookupByLibrary.simpleMessage(
      "アカウントを作成してください",
    ),
    "common_please_sign_in_to_account": MessageLookupByLibrary.simpleMessage(
      "アカウントにサインインしてください",
    ),
    "common_sign_in": MessageLookupByLibrary.simpleMessage("ログイン"),
    "common_sign_in_with_google": MessageLookupByLibrary.simpleMessage(
      "Googleでログイン",
    ),
    "common_sign_out": MessageLookupByLibrary.simpleMessage("ログアウト"),
    "common_sign_up": MessageLookupByLibrary.simpleMessage("会員登録"),
    "common_sign_up_with_google": MessageLookupByLibrary.simpleMessage(
      "Googleで会員登録",
    ),
    "common_transcription": MessageLookupByLibrary.simpleMessage("文字起こし"),
    "common_user": MessageLookupByLibrary.simpleMessage("ユーザー"),
    "common_welcome": MessageLookupByLibrary.simpleMessage("ようこそ"),
    "connect_to_google_success": MessageLookupByLibrary.simpleMessage(
      "Googleとの連携が完了しました",
    ),
    "delete_bot_join_success": MessageLookupByLibrary.simpleMessage(
      "Bot参加をキャンセルしました",
    ),
    "disconnect_to_google_confirm_disconnect_button_title":
        MessageLookupByLibrary.simpleMessage("解除する"),
    "disconnect_to_google_confirm_title": MessageLookupByLibrary.simpleMessage(
      "Googleとの連携を解除しますか？",
    ),
    "disconnect_to_google_success": MessageLookupByLibrary.simpleMessage(
      "Googleとの連携が解除されました",
    ),
    "error_api_account_not_found": MessageLookupByLibrary.simpleMessage(
      "アカウントが見つかりません",
    ),
    "error_api_authentication_invalid": MessageLookupByLibrary.simpleMessage(
      "この認証情報は無効です",
    ),
    "error_api_bad_request": MessageLookupByLibrary.simpleMessage("リクエストが不正です"),
    "error_api_bot_operation_issue": MessageLookupByLibrary.simpleMessage(
      "ボット操作に失敗しました",
    ),
    "error_api_bot_start_time_past": MessageLookupByLibrary.simpleMessage(
      "過去の開始時間は指定できません。未来の時間を指定してください",
    ),
    "error_api_email_already_used": MessageLookupByLibrary.simpleMessage(
      "メールアドレスは既に使用されています",
    ),
    "error_api_invalid_email": MessageLookupByLibrary.simpleMessage(
      "有効なメールアドレスを入力してください",
    ),
    "error_api_network_request_failed": MessageLookupByLibrary.simpleMessage(
      "ネットワークリクエストが失敗しました",
    ),
    "error_api_not_found": MessageLookupByLibrary.simpleMessage("リソースが見つかりません"),
    "error_api_operation_not_allowed": MessageLookupByLibrary.simpleMessage(
      "この操作は許可されていません",
    ),
    "error_api_resource_already_exists": MessageLookupByLibrary.simpleMessage(
      "リソースが既に存在します",
    ),
    "error_api_resource_unauthorized": MessageLookupByLibrary.simpleMessage(
      "認証に失敗しました",
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
    "error_client_goole_authentication": MessageLookupByLibrary.simpleMessage(
      "Google認証に失敗しました",
    ),
    "error_client_goole_not_yet_authenticated":
        MessageLookupByLibrary.simpleMessage("Google認証がまだ完了していません"),
    "error_client_mobile_not_supported": MessageLookupByLibrary.simpleMessage(
      "モバイルではサポートされていません",
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
    "error_client_unexpected_response": MessageLookupByLibrary.simpleMessage(
      "想定外のレスポンスを取得しました",
    ),
    "error_client_unknow": MessageLookupByLibrary.simpleMessage(
      "不明なエラーが発生しました",
    ),
    "error_client_web_not_supported": MessageLookupByLibrary.simpleMessage(
      "Webではサポートされていません",
    ),
    "field_email": MessageLookupByLibrary.simpleMessage("メールアドレス"),
    "field_meeting_bot_join_timing": MessageLookupByLibrary.simpleMessage(
      "参加タイミング",
    ),
    "field_meeting_description": MessageLookupByLibrary.simpleMessage("説明"),
    "field_meeting_end_at": MessageLookupByLibrary.simpleMessage("終了時刻"),
    "field_meeting_start_at": MessageLookupByLibrary.simpleMessage("開始時刻"),
    "field_meeting_title": MessageLookupByLibrary.simpleMessage("タイトル"),
    "field_meeting_url": MessageLookupByLibrary.simpleMessage("ミーティングURL"),
    "field_password": MessageLookupByLibrary.simpleMessage("パスワード"),
    "info_api_bot_status_message_api_request":
        MessageLookupByLibrary.simpleMessage("APIリクエストが成功しました"),
    "info_api_bot_status_message_bot_not_accepted":
        MessageLookupByLibrary.simpleMessage("Botが承認されませんでした"),
    "info_api_bot_status_message_bot_rejected":
        MessageLookupByLibrary.simpleMessage("Botが拒否されました"),
    "info_api_bot_status_message_bot_removed":
        MessageLookupByLibrary.simpleMessage("Botが削除されました"),
    "info_api_bot_status_message_call_ended":
        MessageLookupByLibrary.simpleMessage("通話が終了しました"),
    "info_api_bot_status_message_cannot_join_meeting":
        MessageLookupByLibrary.simpleMessage("ミーティングに参加できません"),
    "info_api_bot_status_message_in_call_not_recording":
        MessageLookupByLibrary.simpleMessage("通話中（録画なし）"),
    "info_api_bot_status_message_in_call_recording":
        MessageLookupByLibrary.simpleMessage("通話中（録画中）"),
    "info_api_bot_status_message_in_waiting_room":
        MessageLookupByLibrary.simpleMessage("待機中です"),
    "info_api_bot_status_message_initialized":
        MessageLookupByLibrary.simpleMessage("参加をリクエストしました"),
    "info_api_bot_status_message_internal_error":
        MessageLookupByLibrary.simpleMessage("内部エラーが発生しました"),
    "info_api_bot_status_message_invalid_meeting_url":
        MessageLookupByLibrary.simpleMessage("無効なミーティングURLです"),
    "info_api_bot_status_message_joining_call":
        MessageLookupByLibrary.simpleMessage("準備中です"),
    "info_api_bot_status_message_meeting_error":
        MessageLookupByLibrary.simpleMessage("ミーティングエラーが発生しました"),
    "info_api_bot_status_message_no_attendees":
        MessageLookupByLibrary.simpleMessage("参加者がいません"),
    "info_api_bot_status_message_no_speaker":
        MessageLookupByLibrary.simpleMessage("スピーカーがいません"),
    "info_api_bot_status_message_recording_paused":
        MessageLookupByLibrary.simpleMessage("録画を一時停止しました"),
    "info_api_bot_status_message_recording_resumed":
        MessageLookupByLibrary.simpleMessage("録画を再開しました"),
    "info_api_bot_status_message_recording_timeout":
        MessageLookupByLibrary.simpleMessage("録画タイムアウトが発生しました"),
    "info_api_bot_status_message_timeout_waiting_to_start":
        MessageLookupByLibrary.simpleMessage("開始待機中にタイムアウトしました"),
    "info_api_bot_status_message_unknown_error":
        MessageLookupByLibrary.simpleMessage("不明なエラーが発生しました"),
    "info_api_bot_status_message_waiting_room_timeout":
        MessageLookupByLibrary.simpleMessage("待機室でタイムアウトしました"),
    "info_api_request_success": MessageLookupByLibrary.simpleMessage(
      "リクエストに成功しました",
    ),
    "info_google_sign_in_canceled": MessageLookupByLibrary.simpleMessage(
      "Googleサインインがキャンセルされました",
    ),
    "meeting_register": MessageLookupByLibrary.simpleMessage("Botを参加させる"),
    "meeting_register_success": MessageLookupByLibrary.simpleMessage(
      "ミーティング登録が完了しました",
    ),
    "schedule_add_meeting_join_right_now": MessageLookupByLibrary.simpleMessage(
      "今すぐ参加",
    ),
    "schedule_add_meeting_join_start_time":
        MessageLookupByLibrary.simpleMessage("開始時刻に参加"),
    "schedule_bot_join_success": MessageLookupByLibrary.simpleMessage(
      "Bot参加を登録しました",
    ),
    "schedule_detail_disable_action_success":
        MessageLookupByLibrary.simpleMessage("Botアクションが無効化されました"),
    "schedule_detail_empyty_transcription":
        MessageLookupByLibrary.simpleMessage("文字起こしはありません"),
    "schedule_detail_enable_action": MessageLookupByLibrary.simpleMessage(
      "Botアクションの有効化",
    ),
    "schedule_detail_enable_action_success":
        MessageLookupByLibrary.simpleMessage("Botアクションが有効化されました"),
    "sign_in_by_google_label": MessageLookupByLibrary.simpleMessage(
      "Googleでログイン済み",
    ),
    "sign_out_confirm_title": MessageLookupByLibrary.simpleMessage(
      "ログアウトしますか？",
    ),
    "sign_out_success": MessageLookupByLibrary.simpleMessage("ログアウトしました"),
    "sign_up_success": MessageLookupByLibrary.simpleMessage("アカウント登録が完了しました"),
    "unit_letter": MessageLookupByLibrary.simpleMessage("文字"),
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
