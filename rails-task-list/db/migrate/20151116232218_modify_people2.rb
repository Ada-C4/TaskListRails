class ModifyPeople2 < ActiveRecord::Migration
  def change
    change_table :people do |t|
      add_column :people, :lifetime_tasks, :integer
    end
  end
end
