class ChangeCompletedAtForTasks < ActiveRecord::Migration
  def change
    change_column(:tasks, :complete, :datetime)
  end
end
