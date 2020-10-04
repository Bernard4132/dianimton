json.extract! user, :id, :email, :created_at, :updated_at
json.url product_url(user, format: :json)

json.shops user.shops