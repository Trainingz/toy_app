class DropField < ActiveRecord::Migration
  def change
    remove_column(:users, :micropost_id, :integer)
  end
end
