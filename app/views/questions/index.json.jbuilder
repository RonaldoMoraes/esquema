json.array!(@questions) do |question|
  json.extract! question, :id, :numero, :pergunta, :list_id, :prova
  json.url question_url(question, format: :json)
end
