前提 /^コントローラを修正$/ do
  git_diff 'app/controllers/top_controller.rb'
end

前提 /^ビューを修正$/ do
  git_diff 'app/views/top/index.html.erb'
end

前提 /^姓 名 を必須に$/ do
  git_diff 'app/models/career.rb'
end

前提 /^プロジェクト名 を必須に$/ do
  git_diff 'app/models/career_detail.rb'
end
