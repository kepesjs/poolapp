class Mattch < ApplicationRecord

	has_many :matchteams, inverse_of: :mattch
	has_many :games

  has_many :teams, through: :matchteams


  accepts_nested_attributes_for :matchteams

end
