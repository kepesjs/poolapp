class Matchteam < ApplicationRecord

	belongs_to :mattch, inverse_of: :matchteams
	belongs_to :team, required: false

end
