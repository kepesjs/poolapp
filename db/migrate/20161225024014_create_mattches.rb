class CreateMattches < ActiveRecord::Migration[5.0]
  def change
    create_table :mattches do |t|
      t.date :mattch_date

      t.timestamps
    end
  end
end
