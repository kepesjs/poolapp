json.extract! player, :id, :f_name, :l_name, :nickname, :created_at, :updated_at
json.url player_url(player, format: :json)