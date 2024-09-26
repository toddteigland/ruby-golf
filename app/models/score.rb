class Score < ApplicationRecord
  
  belongs_to :user
  before_save :set_differential

  def calculate_differential
    (score - rating) * 113/slope
  end

  private 

  def set_differential
    self.differential = calculate_differential
  end
end
