// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppMessage {
  AppMessage();

  static AppMessage? _current;

  static AppMessage get current {
    assert(
      _current != null,
      'No instance of AppMessage was loaded. Try to initialize the AppMessage delegate before accessing AppMessage.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppMessage> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppMessage();
      AppMessage._current = instance;

      return instance;
    });
  }

  static AppMessage of(BuildContext context) {
    final instance = AppMessage.maybeOf(context);
    assert(
      instance != null,
      'No instance of AppMessage present in the widget tree. Did you add AppMessage.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static AppMessage? maybeOf(BuildContext context) {
    return Localizations.of<AppMessage>(context, AppMessage);
  }

  /// `キャンセル`
  String get common_cancel {
    return Intl.message('キャンセル', name: 'common_cancel', desc: '', args: []);
  }

  /// `ログイン`
  String get common_sign_in {
    return Intl.message('ログイン', name: 'common_sign_in', desc: '', args: []);
  }

  /// `ログアウト`
  String get common_sign_out {
    return Intl.message('ログアウト', name: 'common_sign_out', desc: '', args: []);
  }

  /// `会員登録`
  String get common_sign_up {
    return Intl.message('会員登録', name: 'common_sign_up', desc: '', args: []);
  }

  /// `Googleでログイン`
  String get common_sign_in_with_google {
    return Intl.message(
      'Googleでログイン',
      name: 'common_sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Googleで会員登録`
  String get common_sign_up_with_google {
    return Intl.message(
      'Googleで会員登録',
      name: 'common_sign_up_with_google',
      desc: '',
      args: [],
    );
  }

  /// `パスワード変更`
  String get common_change_password {
    return Intl.message(
      'パスワード変更',
      name: 'common_change_password',
      desc: '',
      args: [],
    );
  }

  /// `アカウント削除`
  String get common_delete_account {
    return Intl.message(
      'アカウント削除',
      name: 'common_delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Botを招待`
  String get common_invite_bot {
    return Intl.message(
      'Botを招待',
      name: 'common_invite_bot',
      desc: '',
      args: [],
    );
  }

  /// `スケジュール作成`
  String get common_add_schedule {
    return Intl.message(
      'スケジュール作成',
      name: 'common_add_schedule',
      desc: '',
      args: [],
    );
  }

  /// `ホーム`
  String get common_navigation_home {
    return Intl.message(
      'ホーム',
      name: 'common_navigation_home',
      desc: '',
      args: [],
    );
  }

  /// `スケジュール`
  String get common_navigation_schedule {
    return Intl.message(
      'スケジュール',
      name: 'common_navigation_schedule',
      desc: '',
      args: [],
    );
  }

  /// `ドキュメント`
  String get common_navigation_document {
    return Intl.message(
      'ドキュメント',
      name: 'common_navigation_document',
      desc: '',
      args: [],
    );
  }

  /// `アカウント`
  String get common_navigation_accounts {
    return Intl.message(
      'アカウント',
      name: 'common_navigation_accounts',
      desc: '',
      args: [],
    );
  }

  /// `連携サービス`
  String get common_connected_service {
    return Intl.message(
      '連携サービス',
      name: 'common_connected_service',
      desc: '',
      args: [],
    );
  }

  /// `Googleのサービスと連携`
  String get common_connect_for_google {
    return Intl.message(
      'Googleのサービスと連携',
      name: 'common_connect_for_google',
      desc: '',
      args: [],
    );
  }

  /// `連携済み`
  String get common_connected {
    return Intl.message('連携済み', name: 'common_connected', desc: '', args: []);
  }

  /// `未連携`
  String get common_disconnected {
    return Intl.message('未連携', name: 'common_disconnected', desc: '', args: []);
  }

  /// `取得失敗`
  String get common_error_fetch_failed {
    return Intl.message(
      '取得失敗',
      name: 'common_error_fetch_failed',
      desc: '',
      args: [],
    );
  }

  /// `アカウント登録が完了しました`
  String get sign_up_success {
    return Intl.message(
      'アカウント登録が完了しました',
      name: 'sign_up_success',
      desc: '',
      args: [],
    );
  }

  /// `アカウントを削除しますか？`
  String get account_delete_confirm_title {
    return Intl.message(
      'アカウントを削除しますか？',
      name: 'account_delete_confirm_title',
      desc: '',
      args: [],
    );
  }

  /// `削除する`
  String get account_delete_confirm_button_title {
    return Intl.message(
      '削除する',
      name: 'account_delete_confirm_button_title',
      desc: '',
      args: [],
    );
  }

  /// `アカウントを削除しました`
  String get account_delete_success {
    return Intl.message(
      'アカウントを削除しました',
      name: 'account_delete_success',
      desc: '',
      args: [],
    );
  }

  /// `ログアウトしますか？`
  String get sign_out_confirm_title {
    return Intl.message(
      'ログアウトしますか？',
      name: 'sign_out_confirm_title',
      desc: '',
      args: [],
    );
  }

  /// `ログアウトしました`
  String get sign_out_success {
    return Intl.message(
      'ログアウトしました',
      name: 'sign_out_success',
      desc: '',
      args: [],
    );
  }

  /// `Googleとの連携が完了しました`
  String get connect_to_google_success {
    return Intl.message(
      'Googleとの連携が完了しました',
      name: 'connect_to_google_success',
      desc: '',
      args: [],
    );
  }

  /// `Googleとの連携を解除しますか？`
  String get disconnect_to_google_confirm_title {
    return Intl.message(
      'Googleとの連携を解除しますか？',
      name: 'disconnect_to_google_confirm_title',
      desc: '',
      args: [],
    );
  }

  /// `解除する`
  String get disconnect_to_google_confirm_disconnect_button_title {
    return Intl.message(
      '解除する',
      name: 'disconnect_to_google_confirm_disconnect_button_title',
      desc: '',
      args: [],
    );
  }

  /// `Googleとの連携が解除されました`
  String get disconnect_to_google_success {
    return Intl.message(
      'Googleとの連携が解除されました',
      name: 'disconnect_to_google_success',
      desc: '',
      args: [],
    );
  }

  /// `Botを参加させる`
  String get meeting_register {
    return Intl.message(
      'Botを参加させる',
      name: 'meeting_register',
      desc: '',
      args: [],
    );
  }

  /// `ミーティング登録が完了しました`
  String get meeting_register_success {
    return Intl.message(
      'ミーティング登録が完了しました',
      name: 'meeting_register_success',
      desc: '',
      args: [],
    );
  }

  /// `Bot参加を登録しました`
  String get schedule_bot_join_success {
    return Intl.message(
      'Bot参加を登録しました',
      name: 'schedule_bot_join_success',
      desc: '',
      args: [],
    );
  }

  /// `Bot参加をキャンセルしました`
  String get delete_bot_join_success {
    return Intl.message(
      'Bot参加をキャンセルしました',
      name: 'delete_bot_join_success',
      desc: '',
      args: [],
    );
  }

  /// `Googleでログイン済み`
  String get sign_in_by_google_label {
    return Intl.message(
      'Googleでログイン済み',
      name: 'sign_in_by_google_label',
      desc: '',
      args: [],
    );
  }

  /// `メールアドレス`
  String get field_email {
    return Intl.message('メールアドレス', name: 'field_email', desc: '', args: []);
  }

  /// `パスワード`
  String get field_password {
    return Intl.message('パスワード', name: 'field_password', desc: '', args: []);
  }

  /// `ミーティングURL`
  String get field_meeting_url {
    return Intl.message(
      'ミーティングURL',
      name: 'field_meeting_url',
      desc: '',
      args: [],
    );
  }

  /// `ミーティング開始時刻`
  String get field_meeting_started_at {
    return Intl.message(
      'ミーティング開始時刻',
      name: 'field_meeting_started_at',
      desc: '',
      args: [],
    );
  }

  /// `文字`
  String get unit_letter {
    return Intl.message('文字', name: 'unit_letter', desc: '', args: []);
  }

  /// `{fieldName}を入力してください`
  String validation_required(String fieldName) {
    return Intl.message(
      '$fieldNameを入力してください',
      name: 'validation_required',
      desc: '',
      args: [fieldName],
    );
  }

  /// `{fieldName}は{minLength}{unit}以上を入力してください`
  String validation_min_length(String fieldName, int minLength, String unit) {
    return Intl.message(
      '$fieldNameは$minLength$unit以上を入力してください',
      name: 'validation_min_length',
      desc: '',
      args: [fieldName, minLength, unit],
    );
  }

  /// `{fieldName}は{maxLength}{unit}以下で入力してください`
  String validation_max_length(String fieldName, int maxLength, String unit) {
    return Intl.message(
      '$fieldNameは$maxLength$unit以下で入力してください',
      name: 'validation_max_length',
      desc: '',
      args: [fieldName, maxLength, unit],
    );
  }

  /// `{fieldName}は英数字を入力してください`
  String validation_alpha_numeric(String fieldName) {
    return Intl.message(
      '$fieldNameは英数字を入力してください',
      name: 'validation_alpha_numeric',
      desc: '',
      args: [fieldName],
    );
  }

  /// `メールアドレスの形式に不正があります。有効な{fieldName}を入力してください`
  String validation_email(String fieldName) {
    return Intl.message(
      'メールアドレスの形式に不正があります。有効な$fieldNameを入力してください',
      name: 'validation_email',
      desc: '',
      args: [fieldName],
    );
  }

  /// `URLの形式に不正があります。有効な{fieldName}を入力してください`
  String validation_url(String fieldName) {
    return Intl.message(
      'URLの形式に不正があります。有効な$fieldNameを入力してください',
      name: 'validation_url',
      desc: '',
      args: [fieldName],
    );
  }

  /// `有効な{fieldName}を入力してください`
  String validation_valid(String fieldName) {
    return Intl.message(
      '有効な$fieldNameを入力してください',
      name: 'validation_valid',
      desc: '',
      args: [fieldName],
    );
  }

  /// `リクエストに成功しました`
  String get info_api_request_success {
    return Intl.message(
      'リクエストに成功しました',
      name: 'info_api_request_success',
      desc: '',
      args: [],
    );
  }

  /// `Googleサインインがキャンセルされました`
  String get info_google_sign_in_canceled {
    return Intl.message(
      'Googleサインインがキャンセルされました',
      name: 'info_google_sign_in_canceled',
      desc: '',
      args: [],
    );
  }

  /// `参加をリクエストしました`
  String get info_api_bot_status_message_initialized {
    return Intl.message(
      '参加をリクエストしました',
      name: 'info_api_bot_status_message_initialized',
      desc: '',
      args: [],
    );
  }

  /// `準備中です`
  String get info_api_bot_status_message_joining_call {
    return Intl.message(
      '準備中です',
      name: 'info_api_bot_status_message_joining_call',
      desc: '',
      args: [],
    );
  }

  /// `待機中です`
  String get info_api_bot_status_message_in_waiting_room {
    return Intl.message(
      '待機中です',
      name: 'info_api_bot_status_message_in_waiting_room',
      desc: '',
      args: [],
    );
  }

  /// `通話中（録画なし）`
  String get info_api_bot_status_message_in_call_not_recording {
    return Intl.message(
      '通話中（録画なし）',
      name: 'info_api_bot_status_message_in_call_not_recording',
      desc: '',
      args: [],
    );
  }

  /// `通話中（録画中）`
  String get info_api_bot_status_message_in_call_recording {
    return Intl.message(
      '通話中（録画中）',
      name: 'info_api_bot_status_message_in_call_recording',
      desc: '',
      args: [],
    );
  }

  /// `録画を一時停止しました`
  String get info_api_bot_status_message_recording_paused {
    return Intl.message(
      '録画を一時停止しました',
      name: 'info_api_bot_status_message_recording_paused',
      desc: '',
      args: [],
    );
  }

  /// `録画を再開しました`
  String get info_api_bot_status_message_recording_resumed {
    return Intl.message(
      '録画を再開しました',
      name: 'info_api_bot_status_message_recording_resumed',
      desc: '',
      args: [],
    );
  }

  /// `通話が終了しました`
  String get info_api_bot_status_message_call_ended {
    return Intl.message(
      '通話が終了しました',
      name: 'info_api_bot_status_message_call_ended',
      desc: '',
      args: [],
    );
  }

  /// `Botが拒否されました`
  String get info_api_bot_status_message_bot_rejected {
    return Intl.message(
      'Botが拒否されました',
      name: 'info_api_bot_status_message_bot_rejected',
      desc: '',
      args: [],
    );
  }

  /// `Botが削除されました`
  String get info_api_bot_status_message_bot_removed {
    return Intl.message(
      'Botが削除されました',
      name: 'info_api_bot_status_message_bot_removed',
      desc: '',
      args: [],
    );
  }

  /// `待機室でタイムアウトしました`
  String get info_api_bot_status_message_waiting_room_timeout {
    return Intl.message(
      '待機室でタイムアウトしました',
      name: 'info_api_bot_status_message_waiting_room_timeout',
      desc: '',
      args: [],
    );
  }

  /// `無効なミーティングURLです`
  String get info_api_bot_status_message_invalid_meeting_url {
    return Intl.message(
      '無効なミーティングURLです',
      name: 'info_api_bot_status_message_invalid_meeting_url',
      desc: '',
      args: [],
    );
  }

  /// `ミーティングエラーが発生しました`
  String get info_api_bot_status_message_meeting_error {
    return Intl.message(
      'ミーティングエラーが発生しました',
      name: 'info_api_bot_status_message_meeting_error',
      desc: '',
      args: [],
    );
  }

  /// `不明なエラーが発生しました`
  String get info_api_bot_status_message_unknown_error {
    return Intl.message(
      '不明なエラーが発生しました',
      name: 'info_api_bot_status_message_unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `ミーティングに参加できません`
  String get info_api_bot_status_message_cannot_join_meeting {
    return Intl.message(
      'ミーティングに参加できません',
      name: 'info_api_bot_status_message_cannot_join_meeting',
      desc: '',
      args: [],
    );
  }

  /// `開始待機中にタイムアウトしました`
  String get info_api_bot_status_message_timeout_waiting_to_start {
    return Intl.message(
      '開始待機中にタイムアウトしました',
      name: 'info_api_bot_status_message_timeout_waiting_to_start',
      desc: '',
      args: [],
    );
  }

  /// `Botが承認されませんでした`
  String get info_api_bot_status_message_bot_not_accepted {
    return Intl.message(
      'Botが承認されませんでした',
      name: 'info_api_bot_status_message_bot_not_accepted',
      desc: '',
      args: [],
    );
  }

  /// `内部エラーが発生しました`
  String get info_api_bot_status_message_internal_error {
    return Intl.message(
      '内部エラーが発生しました',
      name: 'info_api_bot_status_message_internal_error',
      desc: '',
      args: [],
    );
  }

  /// `参加者がいません`
  String get info_api_bot_status_message_no_attendees {
    return Intl.message(
      '参加者がいません',
      name: 'info_api_bot_status_message_no_attendees',
      desc: '',
      args: [],
    );
  }

  /// `スピーカーがいません`
  String get info_api_bot_status_message_no_speaker {
    return Intl.message(
      'スピーカーがいません',
      name: 'info_api_bot_status_message_no_speaker',
      desc: '',
      args: [],
    );
  }

  /// `録画タイムアウトが発生しました`
  String get info_api_bot_status_message_recording_timeout {
    return Intl.message(
      '録画タイムアウトが発生しました',
      name: 'info_api_bot_status_message_recording_timeout',
      desc: '',
      args: [],
    );
  }

  /// `APIリクエストが成功しました`
  String get info_api_bot_status_message_api_request {
    return Intl.message(
      'APIリクエストが成功しました',
      name: 'info_api_bot_status_message_api_request',
      desc: '',
      args: [],
    );
  }

  /// `この認証情報は無効です`
  String get error_api_authentication_invalid {
    return Intl.message(
      'この認証情報は無効です',
      name: 'error_api_authentication_invalid',
      desc: '',
      args: [],
    );
  }

  /// `ユーザートークンの有効期限が切れました`
  String get error_api_token_expired {
    return Intl.message(
      'ユーザートークンの有効期限が切れました',
      name: 'error_api_token_expired',
      desc: '',
      args: [],
    );
  }

  /// `アカウントが見つかりません`
  String get error_api_account_not_found {
    return Intl.message(
      'アカウントが見つかりません',
      name: 'error_api_account_not_found',
      desc: '',
      args: [],
    );
  }

  /// `この操作は許可されていません`
  String get error_api_operation_not_allowed {
    return Intl.message(
      'この操作は許可されていません',
      name: 'error_api_operation_not_allowed',
      desc: '',
      args: [],
    );
  }

  /// `有効なメールアドレスを入力してください`
  String get error_api_invalid_email {
    return Intl.message(
      '有効なメールアドレスを入力してください',
      name: 'error_api_invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `メールアドレスは既に使用されています`
  String get error_api_email_already_used {
    return Intl.message(
      'メールアドレスは既に使用されています',
      name: 'error_api_email_already_used',
      desc: '',
      args: [],
    );
  }

  /// `パスワードが脆弱です`
  String get error_api_weak_password {
    return Intl.message(
      'パスワードが脆弱です',
      name: 'error_api_weak_password',
      desc: '',
      args: [],
    );
  }

  /// `想定外のレスポンスを取得しました`
  String get error_api_unexpected_response {
    return Intl.message(
      '想定外のレスポンスを取得しました',
      name: 'error_api_unexpected_response',
      desc: '',
      args: [],
    );
  }

  /// `ネットワークリクエストが失敗しました`
  String get error_api_network_request_failed {
    return Intl.message(
      'ネットワークリクエストが失敗しました',
      name: 'error_api_network_request_failed',
      desc: '',
      args: [],
    );
  }

  /// `リクエストが多すぎます。しばらく待ってから再試行してください`
  String get error_api_too_many_requests {
    return Intl.message(
      'リクエストが多すぎます。しばらく待ってから再試行してください',
      name: 'error_api_too_many_requests',
      desc: '',
      args: [],
    );
  }

  /// `リクエストが不正です`
  String get error_api_bad_request {
    return Intl.message(
      'リクエストが不正です',
      name: 'error_api_bad_request',
      desc: '',
      args: [],
    );
  }

  /// `リソースが見つかりません`
  String get error_api_not_found {
    return Intl.message(
      'リソースが見つかりません',
      name: 'error_api_not_found',
      desc: '',
      args: [],
    );
  }

  /// `認証に失敗しました`
  String get error_api_resource_unauthorized {
    return Intl.message(
      '認証に失敗しました',
      name: 'error_api_resource_unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `ボット操作に失敗しました`
  String get error_api_bot_operation_issue {
    return Intl.message(
      'ボット操作に失敗しました',
      name: 'error_api_bot_operation_issue',
      desc: '',
      args: [],
    );
  }

  /// `過去の開始時間は指定できません。未来の時間を指定してください`
  String get error_api_bot_start_time_past {
    return Intl.message(
      '過去の開始時間は指定できません。未来の時間を指定してください',
      name: 'error_api_bot_start_time_past',
      desc: '',
      args: [],
    );
  }

  /// `リソースが既に存在します`
  String get error_api_resource_already_exists {
    return Intl.message(
      'リソースが既に存在します',
      name: 'error_api_resource_already_exists',
      desc: '',
      args: [],
    );
  }

  /// `サーバーに問題が発生しました`
  String get error_api_server_issue {
    return Intl.message(
      'サーバーに問題が発生しました',
      name: 'error_api_server_issue',
      desc: '',
      args: [],
    );
  }

  /// `不明なエラーが発生しました`
  String get error_client_unknow {
    return Intl.message(
      '不明なエラーが発生しました',
      name: 'error_client_unknow',
      desc: '',
      args: [],
    );
  }

  /// `想定外のレスポンスを取得しました`
  String get error_client_unexpected_response {
    return Intl.message(
      '想定外のレスポンスを取得しました',
      name: 'error_client_unexpected_response',
      desc: '',
      args: [],
    );
  }

  /// `タイムアウトが発生しました`
  String get error_client_dio_timeout {
    return Intl.message(
      'タイムアウトが発生しました',
      name: 'error_client_dio_timeout',
      desc: '',
      args: [],
    );
  }

  /// `キャンセルされました`
  String get error_client_dio_cancel {
    return Intl.message(
      'キャンセルされました',
      name: 'error_client_dio_cancel',
      desc: '',
      args: [],
    );
  }

  /// `ネットワークの接続に問題があります。`
  String get error_client_dio_connection {
    return Intl.message(
      'ネットワークの接続に問題があります。',
      name: 'error_client_dio_connection',
      desc: '',
      args: [],
    );
  }

  /// `リクエストに成功しました。`
  String get error_client_status_code_2XX {
    return Intl.message(
      'リクエストに成功しました。',
      name: 'error_client_status_code_2XX',
      desc: '',
      args: [],
    );
  }

  /// `不正なリクエストです。`
  String get error_client_status_code_4XX {
    return Intl.message(
      '不正なリクエストです。',
      name: 'error_client_status_code_4XX',
      desc: '',
      args: [],
    );
  }

  /// `認証情報が必要です。`
  String get error_client_status_code_401 {
    return Intl.message(
      '認証情報が必要です。',
      name: 'error_client_status_code_401',
      desc: '',
      args: [],
    );
  }

  /// `プロキシ認証が必要です。`
  String get error_client_status_code_407 {
    return Intl.message(
      'プロキシ認証が必要です。',
      name: 'error_client_status_code_407',
      desc: '',
      args: [],
    );
  }

  /// `リクエストタイムアウトが発生しました。`
  String get error_client_status_code_408 {
    return Intl.message(
      'リクエストタイムアウトが発生しました。',
      name: 'error_client_status_code_408',
      desc: '',
      args: [],
    );
  }

  /// `リクエストが競合しています。`
  String get error_client_status_code_409 {
    return Intl.message(
      'リクエストが競合しています。',
      name: 'error_client_status_code_409',
      desc: '',
      args: [],
    );
  }

  /// `リクエストが大きすぎます。`
  String get error_client_status_code_413 {
    return Intl.message(
      'リクエストが大きすぎます。',
      name: 'error_client_status_code_413',
      desc: '',
      args: [],
    );
  }

  /// `URIが長すぎます。`
  String get error_client_status_code_414 {
    return Intl.message(
      'URIが長すぎます。',
      name: 'error_client_status_code_414',
      desc: '',
      args: [],
    );
  }

  /// `リクエストが多すぎます。`
  String get error_client_status_code_429 {
    return Intl.message(
      'リクエストが多すぎます。',
      name: 'error_client_status_code_429',
      desc: '',
      args: [],
    );
  }

  /// `サーバー内部でエラーが発生しました。`
  String get error_client_status_code_5XX {
    return Intl.message(
      'サーバー内部でエラーが発生しました。',
      name: 'error_client_status_code_5XX',
      desc: '',
      args: [],
    );
  }

  /// `ゲートウェイタイムアウトが発生しました。`
  String get error_client_status_code_504 {
    return Intl.message(
      'ゲートウェイタイムアウトが発生しました。',
      name: 'error_client_status_code_504',
      desc: '',
      args: [],
    );
  }

  /// `Google認証がまだ完了していません`
  String get error_client_goole_not_yet_authenticated {
    return Intl.message(
      'Google認証がまだ完了していません',
      name: 'error_client_goole_not_yet_authenticated',
      desc: '',
      args: [],
    );
  }

  /// `Google認証に失敗しました`
  String get error_client_goole_authentication {
    return Intl.message(
      'Google認証に失敗しました',
      name: 'error_client_goole_authentication',
      desc: '',
      args: [],
    );
  }

  /// `Webではサポートされていません`
  String get error_client_web_not_supported {
    return Intl.message(
      'Webではサポートされていません',
      name: 'error_client_web_not_supported',
      desc: '',
      args: [],
    );
  }

  /// `モバイルではサポートされていません`
  String get error_client_mobile_not_supported {
    return Intl.message(
      'モバイルではサポートされていません',
      name: 'error_client_mobile_not_supported',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppMessage> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppMessage> load(Locale locale) => AppMessage.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
