class DetailController < ApplicationController
  def show
  	@category = Category.all
  	@detail = Deal.find(params[:id])
  end
end
