class AppEnv {
  static const env = String.fromEnvironment('ENV');
  static const appId = String.fromEnvironment('APP_ID');
  static const appName = String.fromEnvironment('APP_NAME');
  static const apiUrl = String.fromEnvironment('API_URL');
  static const termsOfServiceUrl =
      String.fromEnvironment('TERMS_OF_SERVICE_URL');
  static const privacyPolicyUrl = String.fromEnvironment('PRIVACY_POLICY_URL');
  static const aboutDialectUrl = String.fromEnvironment('ABOUT_DIALECT_URL');
  static const adIosAppId = String.fromEnvironment('AD_IOS_APP_ID');
  static const adAndroidAppId = String.fromEnvironment('AD_ANDROID_APP_ID');
  static const databaseId = String.fromEnvironment('DATABASE_ID');
}
