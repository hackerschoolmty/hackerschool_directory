json.array!(@courses) do |course|
  json.extract! course, :id, :name, :dificulty, :generation_id
  json.url course_url(course, format: :json)
end
