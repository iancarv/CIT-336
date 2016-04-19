json.array!(@questionnaires) do |questionnaire|
  json.extract! questionnaire, :id, :host_id, :subject_id, :finished
  json.url questionnaire_url(questionnaire, format: :json)
end
