json.array!(@languages) do |language|
  json.extract! language, :id, :name, :skill, :hacker_id
  json.url language_url(language, format: :json)
end
