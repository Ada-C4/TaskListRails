class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :tasks, :complete, :completed_at
  end
end
