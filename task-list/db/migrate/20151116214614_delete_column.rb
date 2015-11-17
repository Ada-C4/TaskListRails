class DeleteColumn < ActiveRecord::Migration
  def change
    remove_column :tasks, :completed
  end
end
