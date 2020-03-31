require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get login_signin_url
    assert_response :success
  end

  test "should get register" do
    get login_register_url
    assert_response :success
  end

  test "should get signup" do
    get login_signup_url
    assert_response :success
  end

end
