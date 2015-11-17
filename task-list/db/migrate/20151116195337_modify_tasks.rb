class ModifyTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      add_column :tasks, :person_id, :integer

    end
    #first parameter is table name, second is column name
    add_index :tasks, :person_id
  end
end
