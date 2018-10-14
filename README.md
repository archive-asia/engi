# engi
スキルシート管理プロジェクト

## よく使うコマンド

### Railsのコンテナを起動してRailsのプロジェクトを作成するコマンド(初期のみ)

`$ docker-compose run web rails new . --force --database=mysql`

### Railsイメージのビルド実行コマンド(gemfile 修正したときに)
`$ docker-compose build`

### RailsのコンテナでDB作成のタスクを実行するコマンド(初期のみ)
`$ docker-compose run web bundle exec rake db:create`

### RailsのコンテナでDB構成変更のタスクを実行するコマンド
`$ docker-compose run web bundle exec rake db:migrate`

### コンテナをデタッチドモード（バックグラウンド）で実行するコマンド
`$ docker-compose up -d`

### コンテナを停止、再起動するコマンド
```
$ docker-compose stop
$ docker-compose down
$ docker-compose restart
```
### コンテナステータス確認
`$ docker-compose ps`

### コンテナを完全に落とす
`$ docker-compose down -v`

### Rail実行するときにprefix
`$ docker-compose run web rails 〜 `
