class CreateGameplayers < ActiveRecord::Migration[5.0]
  def change
    create_table :gameplayers do |t|
      t.integer :player_id
      t.integer :game_id
      t.boolean :eight
      t.boolean :win

      t.timestamps
    end
  end
end
