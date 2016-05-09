json.array!(@answers) do |answer|
  json.extract! answer, :id, :alternative_id, :question_id, :questionnaire_id
  json.url answer_url(answer, format: :json)
end
