json.array!(@careers) do |career|
  json.extract! career, :id, :last_name, :first_name, :birthday, :gender
  json.url career_url(career, format: :json)
end
