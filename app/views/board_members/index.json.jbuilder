json.array!(@board_members) do |board_member|
  json.extract! board_member, :id, :user_id, :board_id
  json.url board_member_url(board_member, format: :json)
end
