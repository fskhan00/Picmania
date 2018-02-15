json.extract! post, :id, :user_id, :picture_url, :comments, :likes, :modified_date, :created_at, :updated_at
json.url post_url(post, format: :json)
