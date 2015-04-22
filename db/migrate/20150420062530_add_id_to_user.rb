class AddIdToUser < ActiveRecord::Migration
  def change
    add_column(:users, :micropost_id, :integer)
  end
end
