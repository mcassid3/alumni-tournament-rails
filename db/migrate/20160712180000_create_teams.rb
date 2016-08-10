class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.integer :school_id
      t.integer :tournament_id, null: false
      t.string :division, null: false
      t.integer :year
      
      t.timestamps null: false    
    end
  end
end
