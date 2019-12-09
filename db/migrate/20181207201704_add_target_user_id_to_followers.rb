class AddTargetUserIdToFollowers < ActiveRecord::Migration[5.2]
  def change
    add_column :followers, :target_user_id, :integer
  end
end
