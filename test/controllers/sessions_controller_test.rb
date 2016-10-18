require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get login_url
    assert_response :success
    assert_select "title", "Log in | MoneySaved"
  end 

end
