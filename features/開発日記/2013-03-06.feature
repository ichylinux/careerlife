# language: ja

機能: 2013-11-01

  シナリオ: トップ画面を変更
    * rm public/index.html
    * rails g controller top --no-assets --no-helper
    * ルートパスの指定を変更
    * indexページを作成
    * ブラウザで http://localhost にアクセス
