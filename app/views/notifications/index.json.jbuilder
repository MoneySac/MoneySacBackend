json.array!(@notifications) do |notification|
  json.extract! notification, :id, :headline, :content
  json.url notification_url(notification, format: :json)
end
