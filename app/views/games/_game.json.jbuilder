json.extract! game, :id, :mattch_id, :game_number, :forfeit, :created_at, :updated_at
json.url game_url(game, format: :json)