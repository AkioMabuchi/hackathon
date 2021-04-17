require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get login_form" do
    get users_login_form_url
    assert_response :success
  end

  test "should get twitter_callback" do
    get users_twitter_callback_url
    assert_response :success
  end

end
