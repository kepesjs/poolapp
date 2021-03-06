class Mattch < ApplicationRecord

	has_many :matchteams, inverse_of: :mattch, dependent: :destroy
	has_many :games, inverse_of: :mattch, dependent: :destroy
  has_many :teams, through: :matchteams

  accepts_nested_attributes_for :matchteams
	accepts_nested_attributes_for :games

end
