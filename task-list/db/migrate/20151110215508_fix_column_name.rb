class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :tasks, :date, :completed_at
  end
end
