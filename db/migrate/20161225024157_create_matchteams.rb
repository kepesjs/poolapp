class CreateMatchteams < ActiveRecord::Migration[5.0]
  def change
    create_table :matchteams do |t|
      t.integer :mattch_id
      t.integer :team_id
      t.boolean :home

      t.timestamps
    end
  end
end
