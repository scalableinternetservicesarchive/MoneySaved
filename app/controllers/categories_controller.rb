class CategoriesController < ApplicationController
  def show
  	@category = Category.all
  	@deal = Deal.where("label = ?",params[:id]);
  end
end
