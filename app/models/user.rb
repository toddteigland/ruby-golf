class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :scores

  def current_handicap
    return nil if scores.count < 3
    differentials = scores.order(created_at: :desc).limit(8).pluck(:differential)
    differentials.sum / differentials.size
  end
  
end
