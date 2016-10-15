require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_new_url
    assert_response :success
    assert_select "title", "Sign up | MoneySaved"
  end

end
