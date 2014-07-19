json.array!(@categories) do |category|
  json.extract! category, :id, :id, :name, :isIncome
  json.url category_url(category, format: :json)
end
