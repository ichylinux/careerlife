もし /^indexページを修正$/ do
  show 'app/views/welcome/index.html.erb'
end

もし /^ブラウザで http:\/\/localhost:3000 にアクセス$/ do
  assert_visit '/'
end
