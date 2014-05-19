# language: ja

機能:

シナリオ: Capistranoをインストール
  * Gemfileを編集
  * sudo bundle install
  * capify .

シナリオ: デプロイの設定
  * Capfileを編集
  * deploy.rbを編集
  
シナリオ: サーバの環境構築
  初めてデプロイする時は、デプロイ対象サーバの環境構築を行う。
  * cap deploy:setup

シナリオ: 最初のデプロイ
  まだサーバは起動していない状態からのデプロイなので、コールドデプロイを行う。
  * cap deploy:cold
