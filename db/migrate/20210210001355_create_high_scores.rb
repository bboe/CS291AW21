class CreateHighScores < ActiveRecord::Migration[6.1]
  def change
    create_table :high_scores do |t|
      t.string :game, null: false
      t.integer :score, null: false

      t.timestamps
    end
  end
end
