class AppAssets {
  static const imagesAppHeaderLogo = AppAsset(
    'assets/images/app_header_logo.png',
  );
  static const imagesAppIcon = AppAsset('assets/images/app_icon.png');
  static const imagesGoogleCalendarIcon = AppAsset(
    'assets/images/google_calendar_icon.png',
  );
}

extension type AppAsset._(String value) {
  const AppAsset(this.value);
}
