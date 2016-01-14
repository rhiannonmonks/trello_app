json.array!(@cards) do |card|
  json.extract! card, :id, :title, :list_id, :ord, :description
  json.url card_url(card, format: :json)
end
