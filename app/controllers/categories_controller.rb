class CategoriesController < ApplicationController
  def show
  	@category = Category.all
  	@deal = Deal.where("label = ?",params[:id]).paginate(:page => params[:page], :per_page => 24)
  end
end
