json.extract! service, :id, :name, :description, :user_id, :serviceimage, :created_at, :updated_at
json.url service_url(service, format: :json)

json.photos service.photos
json.servtypes service.servtypes
