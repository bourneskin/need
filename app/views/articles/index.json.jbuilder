json.array!(@articles) do |article|
  json.extract! article, :id, :title, :preview, :corpse
  json.url article_url(article, format: :json)
end
