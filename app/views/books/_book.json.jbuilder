json.extract! book, :id, :title, :description, :author, :subject, :publisher, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
