class HomeController < ApplicationController
	def home
		@category = Category.all
		@deal = Deal.last(12)
	end
end
