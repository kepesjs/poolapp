class AddColumnToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :winning_team_id, :integer
  end
end
