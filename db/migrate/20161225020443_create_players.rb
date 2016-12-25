class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :f_name
      t.string :l_name
      t.string :nickname

      t.timestamps
    end
  end
end
