json.extract! gameplayer, :id, :player_id, :game_id, :eight, :win, :created_at, :updated_at
json.url gameplayer_url(gameplayer, format: :json)