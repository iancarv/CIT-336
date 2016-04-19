json.array!(@answers) do |answer|
  json.extract! answer, :id, :questionnaire_id, :question_id, :alternative_id
  json.url answer_url(answer, format: :json)
end
