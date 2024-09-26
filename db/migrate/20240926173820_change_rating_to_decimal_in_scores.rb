class ChangeRatingToDecimalInScores < ActiveRecord::Migration[7.1]
  def up
    change_column :scores, :rating, :decimal
  end
  def down
    change_column :scores, :rating, :integer
  end
end
