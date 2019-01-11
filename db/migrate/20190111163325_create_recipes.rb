class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipe do |t|
      t.string :name
      t.string :ingredients
      t.date :cook_time
    end
end
