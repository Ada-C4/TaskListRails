class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.boolean :complete
      t.datetime :date

      t.timestamps null: false
    end
  end
end
