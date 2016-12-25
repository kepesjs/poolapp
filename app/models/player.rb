class Player < ApplicationRecord

	belongs_to :team
	has_many :gamesplayers
	has_many :matchteams
	has_many :games, through: :gamesplayers
	has_many :mattches, through: :matchteams
  
end
