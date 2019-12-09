class RemovePostIdFromFollower < ActiveRecord::Migration[5.2]
  def up
    remove_column :followers, :post_id, :integer
  end
end
