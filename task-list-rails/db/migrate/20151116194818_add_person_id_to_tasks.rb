class AddPersonIdToTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      add_column :tasks, :person_id, :integer
    end

    add_index :tasks, :person_id    # first param is table name, second param is the column to which we are adding an index
  end
end
