class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :picture_url
      t.string :comments
      t.integer :likes
      t.datetime :modified_date

      t.timestamps
    end
  end
end
