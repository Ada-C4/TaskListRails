class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :descript
      t.datetime :date_completed

      t.timestamps null: false
    end
  end
end
