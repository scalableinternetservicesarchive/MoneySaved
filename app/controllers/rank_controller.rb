class RankController < ApplicationController
  def show
  	@deal = Deal.all.paginate(:page => params[:page], :per_page => 24)
  end
end
