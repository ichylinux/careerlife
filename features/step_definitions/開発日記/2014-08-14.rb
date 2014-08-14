前提 /^rails g migration add_column_introduction_on_careers$/ do
  diff 'db/migrate/20140814164115_add_column_introduction_on_careers.rb',
      File.join(File.dirname(__FILE__), '20140814164115_add_column_introduction_on_careers.rb'),
      :as => ['auto', 'edit']
end

前提 /^rake db:migrate$/ do
  git_diff 'db/schema.rb', :as => 'auto'
end

前提 /^日本語ロケールを用意$/ do
  show 'config/locales/ja.yml', :as => 'new'
  show 'config/locales/messages.ja.yml', :as => 'new'
end

前提 /^erb を修正$/ do
  git_diff 'app/views/careers/index.html.erb'
end

前提 /^通知メッセージを修正$/ do
  git_diff 'app/controllers/careers_controller.rb', :from => 26, :to => 66
end
