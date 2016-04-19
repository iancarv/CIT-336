json.array!(@alternatives) do |alternative|
  json.extract! alternative, :id, :text, :question_id
  json.url alternative_url(alternative, format: :json)
end
