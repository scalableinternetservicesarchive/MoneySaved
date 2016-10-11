class HomeController < ApplicationController
	def home
		@category = Category.all
		@deal = Deal.first(12)
	end
end
