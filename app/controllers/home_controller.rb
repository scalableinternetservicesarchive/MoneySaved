class HomeController < ApplicationController
	def home
		@category = Category.all
		@deal = Deal.last(12)

        	#cache
        	if stale?(@deal)
              	respond_to do |format|
                	format.html # show.html.erb
                	format.json { render json: @deal }
          	       end
  	       end

	end
end
