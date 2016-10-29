require 'test_helper'

class UserEditTest < ActionDispatch::IntegrationTest
  require 'test_helper'

class EditTestTest < ActionDispatch::IntegrationTest
  def setup
	@user = users(:michael)
  end
  test "unsuccessful edit" do
	log_in_as(@user)
	get edit_user_path(@user)
	get edit_user_path(@user)
	assert_template 'users/edit'
	patch user_path(@user), params: { user: { name: "",
							email: "foo@invalid",
							password:"foo",
							password_confirmation: "bar" } }
	assert_template 'users/edit'
  end
	
  test "successful edit" do
	log_in_as(@user)
	get edit_user_path(@user)
	assert_template 'users/edit'
	patch user_path(@user), params: { user: { name: "",
							email: "foo@invalid",
							password:"foo",
							password_confirmation: "bar" } }
	assert_template 'users/edit'
  end
 end

end
