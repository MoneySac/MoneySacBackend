json.array!(@categories) do |category|
  json.extract! category, :id, :id, :name, :type_id
  json.url category_url(category, format: :json)
end
