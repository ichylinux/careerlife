# language: ja

機能: 2014-05-10更新

  シナリオ: ライブラリをインストール
    以下のライブラリをインストールします。
    <pre>
      $ sudo yum install zlib-devel openssl-devel curl-devel readline-devel mysql-devel libxslt-devel libxml2-devel
      $ sudo yum --enablerepo=epel install libyaml-devel nodejs
    </pre>

  シナリオ: Railsアプリを新規作成
    * rails _3.2.18_ new careerlife -d mysql --skip-bundle
  
  シナリオ: Gemライブラリの設定
    <p>以下のGemライブラリを使用します。</p>
    <ul>
      <li>daddy        ・・・ Railsアプリ開発をサポートするユーティリティ</li>
      <li>unicorn      ・・・ アプリケーションサーバ</li>
    </ul>

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

