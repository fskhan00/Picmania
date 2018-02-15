class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :comments
      t.boolean :like
      t.datetime :modified_date

      t.timestamps
    end
  end
end
