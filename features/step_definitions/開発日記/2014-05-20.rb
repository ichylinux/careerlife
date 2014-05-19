前提 /^ヘッダを修正$/ do
  git_diff 'app/views/common/_header.html.erb'
  assert_visit '/'
end

もし /^ヘルパーメソッドを読み込む$/ do
  git_diff 'app/helpers/application_helper.rb'
end

もし /^改行して表示$/ do
  git_diff 'app/views/careers/show.html.erb', :from => 23, :to => 32
  
  user = User.all.first
  step "#{user.email} がログインしている"
  step "キャリアの参照を表示する"
end

前提 /^Gemfile に jquery\-ui\-rails を追加$/ do
  git_diff 'Gemfile', :from => 24, :to => 27
end

前提 /^sudo bundle install$/ do
  git_diff 'Gemfile.lock', :as => 'auto', :from => 249
end

前提 /^アセットに datepicker を追加$/ do
  git_diff 'app/assets/javascripts/application.js'
  git_diff 'app/assets/stylesheets/application.css'
end

前提 /^開始日と終了日にカレンダーを設置$/ do
  git_diff 'app/views/careers/_career_detail_fields.html.erb'
end

ならば /^テキストフィールドをクリックするとカレンダーが表示される$/ do
  user = User.all.first
  step "#{user.email} がログインしている"
  visit "/careers/#{Career.all.first.id}/edit"

  page.execute_script("$('.datepicker').last().focus();")
  wait_until{ page.has_selector?('#ui-datepicker-div', :visible => true) }
  pause 3
  capture
end
