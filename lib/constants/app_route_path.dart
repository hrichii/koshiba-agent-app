class AppRoutePath {
  static const root = '/';

  // Unauthorized
  static const String singIn = "/sing-in";
  static const String signUpSend = "/sign-up/send";
  static const String signUpVerify = "/sign-up/verify";
  static const String signUpPassword = "/sign-up/password";
  static const String resetPasswordSend = "/reset-password/send";
  static const String resetPasswordVerify = "/reset-password/verify";
  static const String resetPasswordUpdate = "/reset-password";

  // Authorized
  static const String home = "/home";
  static const String history = "/histories";
  static const String historyDetail = "/histories/:historyId";
  static const String setting = "/settings";
  static const String updateMyPassword = "/me/password";
}
