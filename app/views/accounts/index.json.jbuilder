json.array!(@accounts) do |account|
  json.extract! account, :id, :user, :amount
  json.url account_url(account, format: :json)
end
