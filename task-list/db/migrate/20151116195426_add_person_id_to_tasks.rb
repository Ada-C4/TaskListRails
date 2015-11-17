class AddPersonIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :writer_id, :integer
  end
end
