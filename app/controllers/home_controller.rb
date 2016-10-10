class HomeController < ApplicationController
	def home
		@category = Category.all
	end
end
