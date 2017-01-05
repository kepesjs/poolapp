class Player < ApplicationRecord

	belongs_to :team
	has_many :gameplayers
	has_many :matchteams
	has_many :games, through: :gameplayers
	has_many :mattches, through: :matchteams
	has_one :captain_1
	has_one :captain_2

  scope :team_scope, -> (team_id) { where team_id: team_id }

def number_of_matches

#	games.where(:winning_game_id >= 0).count(:mattch_id)

#	build a table of all games played via gameplayers 

#		exclude games with winner = 0

#		count matches 
#		count number of games 
#		count number of games won
#		count number of eightballs

end

def full_name
	f_name + " " + nickname + " " + l_name
end	


end
