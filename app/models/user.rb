class User < ApplicationRecord

	enum user_type: [:player, :captain, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.user_type ||= :player
  end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
