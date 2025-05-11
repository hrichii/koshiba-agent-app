import 'package:koshiba_agent_app/generated/l10n.dart';

enum AppMessageCodeEnum {
  // 成功系
  i200001,

  // 認証系エラー
  e410001,
  e410002,
  e410003,
  e410004,

  // バリデーションエラー
  e420001,
  e420002,
  e420003,

  // リクエストエラー
  e430001,
  e430002,
  e430003,
  e430004,

  // サーバーエラー
  e500001,

  // アプリ独自のエラー
  ec00001;

  String get message => switch (this) {
        AppMessageCodeEnum.i200001 => AppMessage.current.i200001,
        AppMessageCodeEnum.e410001 => AppMessage.current.e410001,
        AppMessageCodeEnum.e410002 => AppMessage.current.e410002,
        AppMessageCodeEnum.e410003 => AppMessage.current.e410003,
        AppMessageCodeEnum.e410004 => AppMessage.current.e410004,
        AppMessageCodeEnum.e420001 => AppMessage.current.e420001,
        AppMessageCodeEnum.e420002 => AppMessage.current.e420002,
        AppMessageCodeEnum.e420003 => AppMessage.current.e420003,
        AppMessageCodeEnum.e430001 => AppMessage.current.e430001,
        AppMessageCodeEnum.e430002 => AppMessage.current.e430002,
        AppMessageCodeEnum.e430003 => AppMessage.current.e430003,
        AppMessageCodeEnum.e430004 => AppMessage.current.e430004,
        AppMessageCodeEnum.e500001 => AppMessage.current.e500001,
        AppMessageCodeEnum.ec00001 => AppMessage.current.ec00001,
      };
  static AppMessageCodeEnum fromString(String? code) =>
      AppMessageCodeEnum.values.firstWhere(
        (e) => e.name == code,
        orElse: () => AppMessageCodeEnum.ec00001,
      );
}
