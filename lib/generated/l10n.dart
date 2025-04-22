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

  /// `メールアドレス`
  String get field_email {
    return Intl.message('メールアドレス', name: 'field_email', desc: '', args: []);
  }

  /// `パスワード`
  String get field_password {
    return Intl.message('パスワード', name: 'field_password', desc: '', args: []);
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

  /// `この認証情報は無効です`
  String get exception_invalid_credential {
    return Intl.message(
      'この認証情報は無効です',
      name: 'exception_invalid_credential',
      desc: '',
      args: [],
    );
  }

  /// `有効なメールアドレスを入力してください`
  String get exception_invalid_email {
    return Intl.message(
      '有効なメールアドレスを入力してください',
      name: 'exception_invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `不明なエラーが発生しました`
  String get exception_unknown {
    return Intl.message(
      '不明なエラーが発生しました',
      name: 'exception_unknown',
      desc: '',
      args: [],
    );
  }

  /// `このメールアドレスは既に使用されています`
  String get exception_email_already_in_use {
    return Intl.message(
      'このメールアドレスは既に使用されています',
      name: 'exception_email_already_in_use',
      desc: '',
      args: [],
    );
  }

  /// `この操作は許可されていません`
  String get exception_operation_not_allowed {
    return Intl.message(
      'この操作は許可されていません',
      name: 'exception_operation_not_allowed',
      desc: '',
      args: [],
    );
  }

  /// `パスワードが脆弱です`
  String get exception_weak_password {
    return Intl.message(
      'パスワードが脆弱です',
      name: 'exception_weak_password',
      desc: '',
      args: [],
    );
  }

  /// `リクエストが多すぎます。しばらく待ってから再試行してください`
  String get exception_too_many_requests {
    return Intl.message(
      'リクエストが多すぎます。しばらく待ってから再試行してください',
      name: 'exception_too_many_requests',
      desc: '',
      args: [],
    );
  }

  /// `ユーザートークンの有効期限が切れました`
  String get exception_user_token_expired {
    return Intl.message(
      'ユーザートークンの有効期限が切れました',
      name: 'exception_user_token_expired',
      desc: '',
      args: [],
    );
  }

  /// `ネットワークリクエストが失敗しました`
  String get exception_network_request_failed {
    return Intl.message(
      'ネットワークリクエストが失敗しました',
      name: 'exception_network_request_failed',
      desc: '',
      args: [],
    );
  }

  /// `アカウントが見つかりません`
  String get exception_account_not_found {
    return Intl.message(
      'アカウントが見つかりません',
      name: 'exception_account_not_found',
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
