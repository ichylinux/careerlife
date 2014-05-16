# coding: UTF-8

前提 /^キャリアを表示$/ do
  assert_visit '/careers'
end

前提 /^キャリアの参照に遷移$/ do
  assert_url '/careers/[0-9]+'
end

前提 /^キャリアの一覧に遷移$/ do
  assert_url '/careers'
end

前提 /^TOPページを表示$/ do
  assert_visit '/'
end

もし /^経歴を追加 を (.*?) 回クリック$/ do |count|
  count.to_i.times do |i|
    click_on '経歴を追加'
    wait_until { find('table').all('tr').size == i + 3 }
  end
end

ならば /^経歴の入力欄が (.*?) つ表示される$/ do |count|
  capture
end

もし /^経歴に以下の内容を入力する$/ do |ast_table|
  table = normalize_table(ast_table)[1..-1]
  
  find('table').all('tr')[1..-2].each_with_index do |tr, i|
    tr.all('td')[0].find('input').set(table[i][0])

    [1, 2].each do |col|
      ymd = table[i][col]
      ymd = ymd.split('-').map{|a| a.start_with?('0') ? a[1..-1] : a }
      tr.all('td')[col].all('select')[0].find("option[value='#{ymd[0]}']").select_option
      tr.all('td')[col].all('select')[1].find("option[value='#{ymd[1]}']").select_option
      tr.all('td')[col].all('select')[2].find("option[value='#{ymd[2]}']").select_option
    end
  end

  capture
end
