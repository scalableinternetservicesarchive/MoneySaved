class RankController < ApplicationController
  def show
  	@like = Like.group(:deal_id).count
  	@like.sort_by {|_key, value| value}
  	deal_list = @like.keys.reverse

  	@deal = Deal.where(id: deal_list).paginate(:page => params[:page], :per_page => 24)
  end
end
