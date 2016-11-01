class CategoriesController < ApplicationController
  def show
  	@category = Category.all
  	@current_category = params[:id]
  	
  	case params[:sort]
  		when "0"
  			@deal = Deal.where("label = ?",params[:id]).order(expdate: :desc).paginate(:page => params[:page], :per_page => 24)	
  		when "1"
  			@deal = Deal.where("label = ?",params[:id]).order(price: :desc).paginate(:page => params[:page], :per_page => 24)	
  		when "2"
  			@deal = Deal.where("label = ?",params[:id]).order(price: :asc).paginate(:page => params[:page], :per_page => 24)	
  		else
  			@deal = Deal.where("label = ?",params[:id]).paginate(:page => params[:page], :per_page => 24)
  	end

  end
end
