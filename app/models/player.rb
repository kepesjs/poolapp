class Player < ApplicationRecord

	belongs_to :team
	has_many :gamesplayers
	has_many :matchteams
	has_many :games, through: :gamesplayers
	has_many :mattches, through: :matchteams
	has_one :captain_1
	has_one :captain_2
  
def full_name
	f_name + " " + nickname + " " + l_name
end	


end
