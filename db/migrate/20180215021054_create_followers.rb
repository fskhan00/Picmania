class CreateFollowers < ActiveRecord::Migration[5.1]
  def change
    create_table :followers do |t|
      t.integer :user_id
      t.integer :follower_id
      t.datetime :modified_date

      t.timestamps
    end
  end
end
