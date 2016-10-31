require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get usersindex" do
    get admin_usersindex_url
    assert_response :success
  end

  test "should get dealsindex" do
    get admin_dealsindex_url
    assert_response :success
  end

end
