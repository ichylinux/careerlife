# language: ja

機能:

シナリオ: キャリアの登録画面を作成
  * rails g model career last_name:string first_name:string birthday:date gender:string deleted:boolean
  * rake db:migrate
  * rake dad:generate:controller careers
  * ルーティングを追加
  * rake dad:generate:view careers

シナリオ: アクセスしてみる
  * キャリアを表示
  * 追加 をクリック
  * Last name に 鈴木 と入力
  * First name に 太郎 と入力 
  * Gender に M と入力
  * Create Career をクリック
  * キャリアの参照に遷移
  * 編集 をクリック
  * Last name に 佐藤 と入力
  * First name に 花子 と入力
  * Update Career をクリック
  * キャリアの参照に遷移
  * 一覧 をクリック
  * キャリアの一覧に遷移
