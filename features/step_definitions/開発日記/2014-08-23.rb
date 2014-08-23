もし /^indexページを修正$/ do
  git_diff 'app/views/welcome/index.html.erb'
end

もし /^ブラウザで http:\/\/localhost:3000 にアクセス$/ do
  assert_visit '/'
end
