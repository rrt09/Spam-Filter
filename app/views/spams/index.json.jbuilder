json.array!(@spams) do |spam|
  json.extract! spam, :id, :name
  json.url spam_url(spam, format: :json)
end
