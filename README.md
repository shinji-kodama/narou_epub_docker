# Narou.rb Docker Image

Narou.rb を Docker で実行するための Docker Image です。<br>
Docker さえあれば一切環境構築なしで Narou.rb WEB UI を立ち上げることができます。

Narou.rb 作者様が作ったrepositoryをほんの少しだけいじったもの。<br>
（kindleがepub形式に対応したため、kindlegen関連部分を削除しただけ）

イメージ内容は下記で構成されます。

- Alpine Linux
- Ruby 2.7
- [改造版AozoraEpub3](https://github.com/kyukyunyorituryo/AozoraEpub3)


# 使い方（docker-compose 編）

docker-composeが楽なので、こちらを推奨します。<br>

コマンドを実行したフォルダが小説管理用のフォルダになるので移動しておきます。

移動後、以下のコマンドを実行

```sh
$ docker compose up
```

自動的に WEB UI が起動します。<br>
http://localhost:33000/ にアクセスしてください。

ポートを変える場合は docker コマンドと同様に ports の項の前半部分を変更してください。
# イメージを更新する

```sh
$ docker pull whiteleaf/narou
```

詳細は本家のreadmeを参照ください
https://github.com/whiteleaf7/narou-docker

