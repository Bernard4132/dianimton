json.extract! productorder, :id, :product_id, :user_id, :amount, :paid, :addinfo, :created_at, :updated_at
json.url productorder_url(productorder, format: :json)
