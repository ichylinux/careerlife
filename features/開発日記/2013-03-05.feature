# language: ja

機能: 2014-05-10更新

  シナリオ: ライブラリをインストール
    以下のライブラリをインストールします。
    <pre>
      $ sudo yum groupinstall "Development Tools"
      $ sudo yum install tree zlib-devel openssl-devel curl-devel readline-devel mysql-devel libxslt-devel libxml2-devel
      $ sudo wget http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
      $ sudo rpm -Uvh epel-release-6-8.noarch.rpm
      $ sudo yum --enablerepo=epel install libyaml-devel nodejs
      $ sudo yum update
      $ wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p451.tar.gz
      $ tar zxf ruby-2.0.0-p451.tar.gz
      $ cd ruby-2.0.0-p451
      $ ./configure
      $ make
      $ sudo make install
      $ sudo gem update --system
      $ sudo gem install bundler
    </pre>

  シナリオ: Daddyをインストール
    * sudo gem install daddy

  シナリオ: dadコマンドでRailsアプリを新規作成
    * dad new careerlife
  
  シナリオ: アプリを機動
    * rails s
    * ブラウザで http://localhost:3000 にアクセス

