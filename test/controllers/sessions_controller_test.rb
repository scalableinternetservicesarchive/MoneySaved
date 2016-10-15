require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sessions_new_url
    assert_response :success
    assert_select "title", "Log in | MoneySaved"
  end

end
