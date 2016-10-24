class CommentsController < ApplicationController
	before_action :logged_in_user, only: [:create]
  	
  	def create
  		@comments = current_user.comments.build(comments_params)
  		if @comments.save
  			redirect_to request.referrer || root_url 
  		end
  		
  	end

  	private
  	  
  	  def comments_params
  	    params.require(:comment).permit(:content, :deal_id)
  	  end
end
