class CreateScores < ActiveRecord::Migration[7.1]
  def change
    create_table :scores do |t|
      t.string :course
      t.date :date
      t.string :tees
      t.integer :slope
      t.integer :rating
      t.integer :score

      t.timestamps
    end
  end
end
