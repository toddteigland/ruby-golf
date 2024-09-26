class ChangeDifferentialToDecimalInScores < ActiveRecord::Migration[7.1]
  def up
    change_column :scores, :differential, :decimal
  end
  def down
    change_column :scores, :differential, :integer
  end
end
