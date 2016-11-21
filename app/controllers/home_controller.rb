class HomeController < ApplicationController
	def home
		@category = Category.includes(:deal).all
#		@deal = Deal.last(12)
            @deal = Deal.includes(:likes)
                                  .includes(:comments)
                                  .last(12)

=begin
        	#cache
        	if stale?(@deal)
              	respond_to do |format|
                	format.html # show.html.erb
                	format.json { render json: @deal }
          	       end
  	       end
=end
	end
end
