require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { attempts: @user.attempts, bio: @user.bio, custom_keywords: @user.custom_keywords, email: @user.email, first_name: @user.first_name, gender: @user.gender, hide_comments: @user.hide_comments, last_login: @user.last_login, last_name: @user.last_name, local_host: @user.local_host, news_email: @user.news_email, password: @user.password, picture_url: @user.picture_url, private: @user.private, product_email: @user.product_email, register_date: @user.register_date, reminder_email: @user.reminder_email, research_email: @user.research_email, similar: @user.similar, sms: @user.sms, status_cd: @user.status_cd, user_name: @user.user_name, website: @user.website } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { attempts: @user.attempts, bio: @user.bio, custom_keywords: @user.custom_keywords, email: @user.email, first_name: @user.first_name, gender: @user.gender, hide_comments: @user.hide_comments, last_login: @user.last_login, last_name: @user.last_name, local_host: @user.local_host, news_email: @user.news_email, password: @user.password, picture_url: @user.picture_url, private: @user.private, product_email: @user.product_email, register_date: @user.register_date, reminder_email: @user.reminder_email, research_email: @user.research_email, similar: @user.similar, sms: @user.sms, status_cd: @user.status_cd, user_name: @user.user_name, website: @user.website } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
