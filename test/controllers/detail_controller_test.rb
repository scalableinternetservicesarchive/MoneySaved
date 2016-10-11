require 'test_helper'

class DetailControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get detail_show_url
    assert_response :success
  end

end
