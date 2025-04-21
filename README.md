# KoshibaAgetnApp
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