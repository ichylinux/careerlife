# language: ja

機能: 2013-11-12更新

  シナリオ: Railsアプリを新規作成
    * rails _3.2.15_ new careerlife -d mysql --skip-bundle
  
  シナリオ: ライブラリをインストール
    以下のライブラリをインストールします。

    daddy        ・・・ Railsアプリ開発をサポートするユーティリティ
    therubyracer ・・・ ExecJS が利用するJavaScript実行環境。Chromeが搭載しているV8 Engineを利用。
    unicorn      ・・・ アプリケーションサーバ

    * Gemfileを編集
    * sudo bundle install

  シナリオ: Daddyをインストール
    * rake dad:install

  シナリオ: Unicornをインストール
    * rake dad:unicorn:install
  
  シナリオ: Nginxをインストール
    * rake dad:nginx:install

  シナリオ: データベースを作成
    * rake dad:db:config
    * rake dad:db:create
    * rake db:migrate

  シナリオ: アプリを機動
    * sudo service nginx start
    * sudo service unicorn_careerlife_dev start
    * ブラウザで http://localhost にアクセス

