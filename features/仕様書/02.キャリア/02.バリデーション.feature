# language: ja

機能:

シナリオ: 登録時のバリデーション
  前提 user2@example.com がログインしている
  前提 user2@example.com はまだキャリアを登録していない
  前提 プロフィールを表示している

  * キャリア をクリック
  * キャリアの一覧に遷移
  * 追加 をクリック
  * キャリアの追加に遷移
  * 経歴を追加 をクリック
  * 経歴の入力欄が 1 つ表示される
  * プロジェクト名 を空白にする
  * 登録する をクリック
  * 必須チェックエラーでキャリアを登録できない

シナリオ: 更新時のバリデーション
  前提 user1@example.com がログインしている
  前提 user1@example.com はキャリアを登録している
  前提 キャリアを表示している

  * 編集 をクリック
  * キャリアの編集に遷移
  * プロジェクト名 を空白にする
  * 更新する をクリック
  * 必須チェックエラーでキャリアを更新できない
