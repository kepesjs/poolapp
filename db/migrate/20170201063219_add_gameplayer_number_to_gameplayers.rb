class AddGameplayerNumberToGameplayers < ActiveRecord::Migration[5.0]
  def change
    add_column :gameplayers, :gameplayer_number, :integer
  end
end
