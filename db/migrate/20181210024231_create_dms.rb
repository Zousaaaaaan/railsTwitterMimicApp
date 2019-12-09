class CreateDms < ActiveRecord::Migration[5.2]
  def change
    create_table :dms do |t|
      t.integer :user_id
      t.integer :to_user_id
      t.text :content

      t.timestamps
    end
  end
end
