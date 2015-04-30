json.array!(@books) do |book|
  json.extract! book, :id, :id, :isbn, :title, :author_id, :genre, :abstract, :pages, :image_cover_url, :published_on, :total_in_library, :created_at, :updated_at
  json.url book_url(book, format: :json)
end
