module DealsHelper

	def cache_key_for_deal(deal)
    	"deal/#{deal.id}/#{deal.updated_at}/#{deal.comments.count}#{deal.likes.count}"
  	end

  	def cache_key_for_deal_list(deals)
    	#ids = deals.map(&:id).join('-')
    	#max_updated_at = deals.map(&:id).max
    	#{}"deals/#{ids}-#{max_updated_at.to_i}"
    	"Deal_List/#{Deal.maximum(:updated_at)}"
  	end

end
