json.extract! order, :id, :customer_id, :shippingFee, :total, :created_at, :updated_at
json.url order_url(order, format: :json)
