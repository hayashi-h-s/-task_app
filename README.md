<<<<<<< HEAD
分かりやすくてカッコイイ名前をつける（今回は"hoge"という名前をつける）
 
"hoge"が何かを簡潔に紹介する
 
# DEMO

DEMO
 
"hoge"の魅力が直感的に伝えわるデモ動画や図解を載せる
 
# Features
 
"hoge"のセールスポイントや差別化などを説明する
 
# Requirement
 
"hoge"を動かすのに必要なライブラリなどを列挙する
 
* huga 3.5.2
* hogehuga 1.0.2
 
# Installation
 
Requirementで列挙したライブラリなどのインストール方法を説明する
 
```bash
pip install huga_package
```
 
# Usage
 
DEMOの実行方法など、"hoge"の基本的な使い方を説明する
 
```bash
git clone https://github.com/hoge/~
cd examples
python demo.py
```
 
# Note
 
注意点などがあれば書く
 
# Author
 
作成情報を列挙する
 
* 作成者
* 所属
* E-mail
 
# License
ライセンスを明示する
 
"hoge" is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
 
社内向けなら社外秘であることを明示してる
 
"hoge" is Confidential.
=======
README

画像付きで情報を発信できる、情報共有サイトです。転職活動用のポートフォリオとして作成致しました。

本番環境
https://morooka3.net/

ログイン画面からテストユーザーでログインが可能です。

開発環境はdevelopブランチにあります。

機能一覧、使用gemなど
ユーザー登録（確認メール送信）、ログイン機能、パスワード再発行メールなど（device）
ユーザープロフィール画像アップロード、削除機能（active storage）
ajaxを活用したユーザー間でのフォロー、フォロワー機能
ツイート投稿機能(CRUD)
ツイート画像投稿機能(carrierwave)
ajaxを活用したいいね機能
ツイートへのコメント機能
ツイート一覧表示の際などのページネーション機能(kaminari)
人気ツイートランキング機能
管理者用名前空間での論理削除機能（kakurenbo-puti）
名前、ツイートの検索機能(and検索)
フォローしたユーザーのツイートのみを取得するタイムライン機能
レスポンシブデザイン（スマホサイズに対応）
使用技術
Ruby 2.6.3
Ruby on Rails 5.2.3
MYSQL 8
SASS,Bootstrap
Docker
GitHub,Git
Rspec
terraform
AWS
VPC
EC2
ECS
ECR
RDS for MySQL
ALB
Route53
S3
ACM
circleci
テスト
Rspec
単体テスト（モデル）
統合テスト（systemspec）
circleci
masterブランチへプッシュすると、 circleciで自動ビルド・自動テスト・自動デプロイ、タスク定義の更新とmigrationを行います。

terraform
awsのインフラをterraformで作成することで、インフラのコード化を行いました。 tfstateは、amazon S3 のバケットに保存しています。

AWSアーキテクチャ図
>>>>>>> parent of a679ada... readmeの変更
