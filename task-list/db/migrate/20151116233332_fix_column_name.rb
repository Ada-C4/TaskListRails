class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :tasks, :writer_id, :person_id
  end
end
