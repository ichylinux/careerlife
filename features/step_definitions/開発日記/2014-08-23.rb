もし /^rails g model career last_name:string first_name:string birthday:date gender:string deleted:boolean$/ do
  git_diff_name 'app/models', 'db/migrate', 'test/models'
end

もし /^rake db:migrate$/ do
  git_diff 'db/schema.rb', :as => 'auto'
end

もし /^rake dad:generate:controller careers$/ do
end

もし /^ルーティングを追加$/ do
  git_diff 'config/routes.rb'
end

もし /^rake dad:generate:view careers$/ do
end
