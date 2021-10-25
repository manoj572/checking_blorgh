json.extract! article, :id, :title, :string, :description, :string, :created_at, :updated_at
json.url article_url(article, format: :json)
