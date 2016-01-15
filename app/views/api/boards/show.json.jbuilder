json.title @board.title
json.id @board.id
json.members @board.members, :email

json.lists @board.lists do |json, list|
  json.title list.title
  json.ord list.ord
  json.id list.id
end