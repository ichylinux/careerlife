# language: ja

機能:

  シナリオ: ライブラリをインストール
    CentOS 6.5 に、以下のライブラリをインストールします。
    <pre>
      $ sudo yum groupinstall "Development Tools"
      $ sudo yum install tree zlib-devel openssl-devel curl-devel readline-devel mysql-devel libxslt-devel libxml2-devel
      $ sudo wget http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
      $ sudo rpm -Uvh epel-release-6-8.noarch.rpm
      $ sudo yum --enablerepo=epel install libyaml-devel nodejs
      $ sudo yum update
      $ wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p481.tar.gz
      $ tar zxf ruby-2.0.0-p481.tar.gz
      $ cd ruby-2.0.0-p481
      $ ./configure --disable-install-rdoc
      $ make
      $ sudo make install
      $ sudo gem update --system
      $ sudo gem install bundler
    </pre>

  シナリオ: アプリを新規作成
    * sudo gem install daddy
    * dad new careerlife
    * rails s
    * ブラウザで http://localhost:3000 にアクセス

