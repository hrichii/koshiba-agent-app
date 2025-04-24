.PHONY: setup-dev setup-stg setup-prd build-android build-ios build-web


# 開発環境のセットアップ
setup-dev:
	cp -r koshiba-agent-app-secret/firebase/dev/firebase.json firebase.json
	cp -r koshiba-agent-app-secret/firebase_options/dev/firebase_options.dart lib/core/constants/firebase_options.dart
	cp -r koshiba-agent-app-secret/google_services/dev/google-services.json android/app/google-services.json
	cp -r koshiba-agent-app-secret/google_service/dev/GoogleService-Info.plist ios/Runner/GoogleService-Info.plist

# ステージング環境のセットアップ
setup-stg:
	cp -r koshiba-agent-app-secret/firebase/stg/firebase.json firebase.json
	cp -r koshiba-agent-app-secret/firebase_options/stg/firebase_options.dart lib/core/constants/firebase_options.dart
	cp -r koshiba-agent-app-secret/google_services/stg/google-services.json android/app/google-services.json
	cp -r koshiba-agent-app-secret/google_service/stg/GoogleService-Info.plist ios/Runner/GoogleService-Info.plist

# 本番環境のセットアップ
setup-prd:
	cp -r koshiba-agent-app-secret/firebase/prd/firebase.json firebase.json
	cp -r koshiba-agent-app-secret/firebase_options/prd/firebase_options.dart lib/core/constants/firebase_options.dart
	cp -r koshiba-agent-app-secret/google_services/prd/google-services.json android/app/google-services.json
	cp -r koshiba-agent-app-secret/google_service/prd/GoogleService-Info.plist ios/Runner/GoogleService-Info.plist

# Androidビルド
build-android:
	flutter build apk --release --dart-define-from-file=env/dev.env

# iOSビルド
build-ios:
	flutter build ios --release --dart-define-from-file=env/dev.env

# Webビルド
build-web:
	flutter build web --release --dart-define-from-file=env/dev.env