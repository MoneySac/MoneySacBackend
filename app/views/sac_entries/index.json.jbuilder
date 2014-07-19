json.array!(@sac_entries) do |sac_entry|
  json.extract! sac_entry, :id, :id, :description, :amount, :category_id, :date, :isIncome, :recurring
  json.url sac_entry_url(sac_entry, format: :json)
end
