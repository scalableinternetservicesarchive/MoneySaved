class LikesController < ApplicationController
	before_action :logged_in_user, only: [:create]
  
  	def create
  	end
end
