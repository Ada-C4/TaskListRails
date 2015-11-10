class AddCompletedAtTimeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :completed_at, :time
  end
end
