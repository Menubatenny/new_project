json.extract! detail, :id, :pickup_address, :delivery_address, :created_at, :updated_at
json.url detail_url(detail, format: :json)
