json.extract! orderdetail, :id, :order_id, :book_id, :quantity, :created_at, :updated_at
json.url orderdetail_url(orderdetail, format: :json)
