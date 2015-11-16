class AddIndexToTasks < ActiveRecord::Migration
  def change
    rename_column :tasks, :writer_id, :person_id
    add_index :tasks, :person_id
  end
end
