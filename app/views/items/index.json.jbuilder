json.array!(@items) do |item|
  json.extract! item, :id, :identifier, :description, :retail_price, :price, :notes, :retail_url
  json.url item_url(item, format: :json)
end
