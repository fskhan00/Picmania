class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :picture_url
      t.integer :attempts
      t.datetime :last_login
      t.string :local_host
      t.string :status_cd
      t.datetime :register_date
      t.string :website
      t.string :gender
      t.string :bio
      t.boolean :private
      t.boolean :similar
      t.boolean :hide_comments
      t.string :custom_keywords
      t.boolean :news_email
      t.boolean :reminder_email
      t.boolean :product_email
      t.boolean :research_email
      t.boolean :sms
      t.string :user_name

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :user_name, unique: true
  end
end
