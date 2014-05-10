# coding: UTF-8

もし /^以下のライブラリをインストールします。$/ do |string|
end

もし /^rails _3.2.18_ new careerlife -d mysql --skip-bundle$/ do
  `rm -Rf /tmp/careerlife`
  `cd /tmp && rails _3.2.18_ new careerlife -d mysql --skip-bundle`
  `cd /tmp/careerlife && sudo bundle install`
  puts "<pre>#{`cd /tmp/careerlife && tree .`}</pre>"
  FileUtils.cp '/tmp/careerlife/Gemfile', File.dirname(__FILE__)
  FileUtils.cp '/tmp/careerlife/Gemfile.lock', File.dirname(__FILE__)
end

前提 /^Gemfileを編集$/ do
  diff 'Gemfile', 'features/step_definitions/開発日記/Gemfile', :as => 'edit'
end

前提 /^sudo bundle install$/ do
  diff 'Gemfile.lock', 'features/step_definitions/開発日記/Gemfile.lock', :as => 'auto'
end

前提 /^rake dad:install$/ do
  show 'features/support/env.rb', :as => 'auto'
end

前提 /^rake dad:unicorn:install$/ do
  show 'config/unicorn.rb', :as => 'auto'
end

前提 /^rake dad:nginx:install$/ do
end

前提 /^rake dad:db:config$/ do
  diff 'config/database.yml', 'features/step_definitions/開発日記/database.yml', :as => 'auto'
end

前提 /^rake dad:db:create$/ do
end

前提 /^rake db:migrate$/ do
  show 'db/schema.rb', :as => 'auto'
end

前提 /^sudo service nginx start$/ do
end

前提 /^sudo service unicorn_careerlife_dev start$/ do
end

前提 /^ブラウザで http:\/\/localhost にアクセス$/ do
  assert_visit '/'
end
