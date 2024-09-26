class AddDifferentialToScores < ActiveRecord::Migration[7.1]
  def change
    add_column :scores, :differential, :decimal
  end
end
