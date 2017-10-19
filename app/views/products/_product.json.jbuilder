json.extract! product, :id, :image, :name, :rating, :user_id, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
