class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, dependent: :destroy

  def self.viewable_by(viewing_user, user)
    # return true unless (user.present?)

    if viewing_user.present?
      return true if viewing_user == user
    end

    return false
  end
end
