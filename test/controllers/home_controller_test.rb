require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get home" do
	get root_url
	assert_response :success 
	assert_select "title", "MoneySaved" 
  end
 
end
