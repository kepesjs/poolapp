class Team < ApplicationRecord

	has_many :players
	has_many :matchteams
	has_many :mattches, through: :matchteams
  
end
