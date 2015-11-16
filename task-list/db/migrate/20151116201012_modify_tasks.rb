class ModifyTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      add_column :tasks, :writer_id, :integer
    end

    add_index :tasks, :writer_id
  end
end
