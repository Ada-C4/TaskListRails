class ModifyTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      add_column :tasks, :person_id, :integer
    end
    # This allows AR to note that the writer_id column is potentially a reference to something else
    add_index :tasks, :person_id
  end
end
