json.extract! user, :id, :email, :password, :first_name, :last_name, :picture_url, :attempts, :last_login, :local_host, :status_cd, :register_date, :website, :gender, :bio, :private, :similar, :hide_comments, :custom_keywords, :news_email, :reminder_email, :product_email, :research_email, :sms, :user_name, :created_at, :updated_at
json.url user_url(user, format: :json)
