class LikesController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
  
  	def create 
  		current_user.likes.create(deal_id: params[:deal_id])
  		redirect_to request.referrer
  		
  		
  	end

  	def destroy
  		current_user.likes.find_by(deal_id: params[:deal_id]).destroy
  		respond_to do |format|
  			format.html { redirect_to request.referrer }
  			format.js
  		end
  	end
end
