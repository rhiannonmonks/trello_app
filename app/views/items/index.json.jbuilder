json.array!(@items) do |item|
  json.extract! item, :id, :card_id, :done, :title
  json.url item_url(item, format: :json)
end
