# Narou.rb Docker Image

Narou.rb を Docker で実行するための リポジトリ です。<br>
（Narou.rb 作者様が作ったrepositoryをほんの少しだけいじったものです。）<br>

Docker さえあれば一切環境構築なしで Narou.rb WEB UI を立ち上げることができます。

本家narou-dockerのイメージは下記で構成されます。

- Alpine Linux
- Ruby 2.7
- [改造版AozoraEpub3](https://github.com/kyukyunyorituryo/AozoraEpub3)

以下、本リポジトリの変更点です。

- compose.ymlで読み込むイメージを、whiteleaf/narou → Dockerfileに変更
- kindleがepub形式に対応したため、kindlegen関連部分を削除
- rubyのverを更新
- AozoraEpub3のダウンロードURLを修正


# 使い方

docker-composeが楽なので、こちらを推奨します。<br>

本リポジトリをclone後、以下のコマンドを実行する

```sh
$ docker compose up
```

http://localhost:33000/ にアクセスしてください。<br>
WEB UI が起動します。<br>


# 備考

詳細は本家のreadmeを参照ください
https://github.com/whiteleaf7/narou-docker

