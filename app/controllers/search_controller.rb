class SearchController < ApplicationController
  def show
  	@deal = Deal.where("name LIKE ?", "%#{params[:search]}%").paginate(:page => params[:page], :per_page => 24)
  end
end
