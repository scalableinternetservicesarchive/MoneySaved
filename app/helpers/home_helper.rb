module HomeHelper

	def cache_key_for_deal(d)
    		"deal/#{d.id}/#{d.updated_at}"
	end

  def cache_key_for_deal_list
    ("deal_list/#{Deals.maximum(:updated_at)}/"
     + Comments.maximum(:updated_at).to_s)
  end
end
