class Team < ApplicationRecord

	has_many :players
	has_many :matchteams
	has_many :mattches, through: :matchteams

	belongs_to :captain_1, :foreign_key => "captain", :class_name => "Player", optional: true
	belongs_to :captain_2, :foreign_key => "captain2", :class_name => "Player", optional: true
  
end
