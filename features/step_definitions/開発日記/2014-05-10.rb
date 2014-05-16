# coding: UTF-8

もし /^rails g controller top --no-assets --no-helper$/ do
  show 'app/controllers/top_controller.rb', :as => 'auto'
  show 'test/functional/top_controller_test.rb', :as => 'auto'
end

もし /^indexページを作成$/ do
  show 'app/views/top/index.html.erb', :as => 'new'
end

もし /^ルートパスの指定を変更$/ do
  git_diff 'config/routes.rb', :as => 'edit'
end

もし /^rm public\/index\.html$/ do
end

もし /^ブラウザで http:\/\/localhost にアクセス$/ do
  assert_visit '/'
end
