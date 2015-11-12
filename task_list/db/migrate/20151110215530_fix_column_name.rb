class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :tasks, :completed_date, :completed_at
  end
end
