json.extract! product, :id, :name, :description, :productimage, :shop_id, :minprice, :maxprice, :moq, :shippinglocation, :shop_id, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)

json.photos product.photos
