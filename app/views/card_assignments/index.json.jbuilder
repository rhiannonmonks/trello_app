json.array!(@card_assignments) do |card_assignment|
  json.extract! card_assignment, :id, :card_id, :user_id
  json.url card_assignment_url(card_assignment, format: :json)
end
