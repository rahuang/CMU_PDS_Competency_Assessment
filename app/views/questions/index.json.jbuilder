json.array!(@questions) do |question|
  json.extract! question, :id, :question, :active
  json.url question_url(question, format: :json)
end
