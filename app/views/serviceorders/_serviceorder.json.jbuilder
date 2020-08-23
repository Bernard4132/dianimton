json.extract! serviceorder, :id, :service_id, :user_id, :amount, :paid, :addinfo, :created_at, :updated_at
json.url serviceorder_url(serviceorder, format: :json)
