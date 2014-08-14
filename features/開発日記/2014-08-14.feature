# language: ja

機能:

シナリオ: 略歴とかアピールなどを書くテキストエリアを追加
  * rails g migration add_column_introduction_on_careers
  * rake db:migrate

シナリオ: 自動生成された画面が英語なのが気になるので、日本語化
  * 日本語ロケールを用意
  * erb を修正
  * 通知メッセージを修正
