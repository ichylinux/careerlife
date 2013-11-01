# coding: UTF-8

もし /^rails _3.2.15_ new careerlife -d mysql --skip-bundle$/ do
  `rm -Rf /tmp/careerlife`
  `cd /tmp && rails new careerlife -d mysql --skip-bundle`
  puts "<pre>#{`cd /tmp/careerlife && tree .`}</pre>"
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
