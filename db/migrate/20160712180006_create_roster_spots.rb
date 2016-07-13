class CreateRosterSpots < ActiveRecord::Migration
  def change
    create_table :roster_spots do |t|
      t.integer :player_id, null: false
      t.integer :team_id, null: false
      t.boolean :paid
      
      t.timestamps null: false
    end
  end
end
