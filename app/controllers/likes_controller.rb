class LikesController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
  
  	def create 
  		current_user.likes.create(likes_params)
  		redirect_to request.referrer
  	end


  	def destroy
  		current_user.likes.find_by(params[:deal_id]).destroy
  		redirect_to request.referrer
  	end

  	private
  	  
  	  def likes_params
  	    params.require(:like).permit(:deal_id)
  	  end

end
