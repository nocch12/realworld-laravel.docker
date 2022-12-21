# docker-laravel-nginx

## 概要
※このリポジトリは準備中です。

Docker Composeを使い、Laravelの開発環境を構築します。  
Nginxは自己証明書によるHTTPS通信に対応させています。

## 使い方

### ドメインの設定（初回のみ）
アプリケーションのドメインを設定します。  
```
cp .env.example .env
```

.envのドメインを書き換えます。
```
DOMAIN=任意のアプリケーションのドメイン
```

### ディレクトリの構成
デフォルトでは、以下のようなディレクトリ構成となるようにします。
```
project-root
├ docker-laravel-nginx（このリポジトリ）
└ laravel（Laravelのソースコードが入るディレクトリ）
```

お好みでバインドするvolumeのパスは変更してください。

### Laravelのインストール
```
$ docker compose build
$ docker compose up -d
$ docker compose exec app composer create-project --prefer-dist laravel/laravel .
$ docker compose exec app php artisan key:generate
$ docker compose exec app php artisan storage:link
$ docker compose exec app chmod -R 777 storage bootstrap/cache
$ docker compose exec app php artisan migrate
```

https://my-domain.local  
（.envで設定したドメインに読み替えてください）  