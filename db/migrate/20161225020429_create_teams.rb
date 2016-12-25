class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :captain
      t.integer :captain2

      t.timestamps
    end
  end
end
