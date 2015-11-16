class ModifyPeople < ActiveRecord::Migration
  def change
    remove_column :people, :tasks_completed
  end
end
