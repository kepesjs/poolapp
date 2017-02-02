class Game < ApplicationRecord

	has_many :gameplayers, -> { order :gameplayer_number }, inverse_of: :game, dependent: :destroy
	has_many :players, through: :gameplayers
	belongs_to :mattch, inverse_of: :games

	has_many :matchteams, through: :mattch

	accepts_nested_attributes_for :gameplayers

end
