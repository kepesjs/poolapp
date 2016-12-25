class Game < ApplicationRecord

	has_many :gameplayers
	has_many :games, through: :gameplayers
	belongs_to :mattch

end
