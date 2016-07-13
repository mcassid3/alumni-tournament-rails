class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.string :home_color
      t.string :away_color
      t.string :city
      t.string :state
      
      t.timestamps null: false
    end
  end
end
