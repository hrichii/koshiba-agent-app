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

  /// `サインイン`
  String get common_sign_in {
    return Intl.message('サインイン', name: 'common_sign_in', desc: '', args: []);
  }

  /// `サインアウト`
  String get common_sign_out {
    return Intl.message('サインアウト', name: 'common_sign_out', desc: '', args: []);
  }

  /// `サインアップ`
  String get common_sign_up {
    return Intl.message('サインアップ', name: 'common_sign_up', desc: '', args: []);
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

  /// `アカウントを削除しました`
  String get account_delete_success {
    return Intl.message(
      'アカウントを削除しました',
      name: 'account_delete_success',
      desc: '',
      args: [],
    );
  }

  /// `サインアウトしました`
  String get sign_out_success {
    return Intl.message(
      'サインアウトしました',
      name: 'sign_out_success',
      desc: '',
      args: [],
    );
  }

  /// `ミーティングを登録する`
  String get meeting_register {
    return Intl.message(
      'ミーティングを登録する',
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

  /// `{fieldName}は{length}{unit}で入力してください`
  String validation_only_length(String fieldName, int length, String unit) {
    return Intl.message(
      '$fieldNameは$length$unitで入力してください',
      name: 'validation_only_length',
      desc: '',
      args: [fieldName, length, unit],
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
