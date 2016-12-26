class Game < ApplicationRecord

	has_many :gameplayers
	has_many :players, through: :gameplayers
	belongs_to :mattch, inverse_of: :games

end
