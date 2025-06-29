# Astar
## 環境

- Flutter 3.29.2


## インストール
```sh
brew install mise
mise install
```

## SSEサーバー起動
```sh
docker compose up
```
```sh
curl -N -H "Accept: text/event-stream" http://localhost:10000/.sse
```

## Web

アクセス先 https://koshiba-agent-bcc2e.web.app

公開前に他のユーザーに表示したい場合は、プレビュー チャネルを使用できる。
```sh
CHANNEL_ID=hogehoge
firebase hosting:channel:deploy ${CHANNEL_ID}
```
公開コマンド
```sh
firebase deploy
```

公開停止コマンド
```sh
firebase hosting:disable
```

## Android
### Firebase
```sh
cd android
fastlane upload_firebase_distribution version:1.0.0 build_number:1
```

### iOS
```sh
cd ios
fastlane upload_internal_test version:1.0.0 build_number:1
```