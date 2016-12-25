class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :mattch_id
      t.integer :game_number
      t.boolean :forfeit

      t.timestamps
    end
  end
end
