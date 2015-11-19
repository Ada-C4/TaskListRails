class RemoveCreatedDateForCreatedAt < ActiveRecord::Migration
  def change
  	remove_column(:tasks, :completed_date)
  end
end
