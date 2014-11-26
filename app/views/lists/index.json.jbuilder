json.array!(@lists) do |list|
  json.extract! list, :id, :nome, :assunto
  json.url list_url(list, format: :json)
end
