もし /^content_for で拡張の余地を設ける$/ do
  git_diff 'app/views/layouts/application.html.erb'
end

もし /^プロフィール機能とキャリア機能をサイドバー付きのレイアウトに変更$/ do
  git_diff 'app/views/layouts/profiles.html.erb', :as => 'new'
  git_diff 'app/controllers/careers_controller.rb', :from => 1, :to => 5
end

前提 /^生年月日から年齢を算出するメソッドを作成$/ do
  git_diff 'app/models/user.rb'
end

前提 /^トップページの一覧を修正$/ do
  git_diff 'app/views/top/index.html.erb'
end
