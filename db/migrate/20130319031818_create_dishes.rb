class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :day_of_week

      t.timestamps
    end
  end
end
