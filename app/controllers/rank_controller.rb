class RankController < ApplicationController
  def show
  	@like = Like.group(:deal_id).unscope(:order).count

  	#@deal = Deal.where(id: deal_list).paginate(:page => params[:page], :per_page => 24)
  	@deal = Deal.includes(:likes).includes(:comments).joins('INNER JOIN (SELECT COUNT(*) AS likes_count, "likes"."deal_id" AS likes_deal_id FROM "likes" GROUP BY "likes"."deal_id") t1 ON deals.id = t1.likes_deal_id')
  	.order("t1.likes_count DESC").paginate(:page => params[:page], :per_page => 24)
  end
end
