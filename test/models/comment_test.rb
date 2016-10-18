require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	def setup 
  		@user = users(:michael) 
  		@deal = deals(:one)
  		@comment = Comment.new(content: "hahahaadasdsh", user_id: @user.id, deal_id: @deal.id) 
  	end

	test "should be valid" do
  		assert @comment.valid?
  	end

 	test "content should be present" do
		@comment.content = "      "
		assert_not @comment.valid?
	end	

	test "content should be at least 10 characters" do
		@comment.content = "a"*9
		assert_not @comment.valid?
	end

end
