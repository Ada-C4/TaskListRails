class AddPhoto < ActiveRecord::Migration
  def change
    add_column :people, :photo, :string
    add_column :people, :bio, :string
  end
end
