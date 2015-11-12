class Fixname < ActiveRecord::Migration
  def change
  rename_column :tasks, :completed, :completed_at
  end
end
