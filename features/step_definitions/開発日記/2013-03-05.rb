# coding: UTF-8

もし /^以下のライブラリをインストールします。$/ do |string|
end

前提 /^sudo gem install daddy$/ do
end

前提 /^dad new careerlife$/ do
end

前提 /^rails s$/ do
end

前提 /^ブラウザで http:\/\/localhost:3000 にアクセス$/ do
  assert_visit '/'
end
