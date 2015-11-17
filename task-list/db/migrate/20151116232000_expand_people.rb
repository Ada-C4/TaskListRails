class ExpandPeople < ActiveRecord::Migration
  def change
    change_table :people do |t|
      add_column :people, :favorite_cat, :string
      add_column :people, :favorite_food, :string
      add_column :people, :hometown, :string
      add_column :people, :favorite_pie, :string
      add_column :people, :picture, :string
    end
  end
end
