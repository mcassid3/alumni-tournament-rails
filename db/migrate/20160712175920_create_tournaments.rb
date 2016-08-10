class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name, null: false
      t.date :date
      t.string :rink
      t.string :city
      t.string :state
      
      t.timestamps null: false
    end
  end
end
