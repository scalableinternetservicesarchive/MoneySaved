module HomeHelper

	def cache_key_for_deal(d)
    		"deal/#{d.id}/#{d.updated_at}"
	end

  def cache_key_for_deal_table
    ("deal_table/#{Deal.maximum(:updated_at)}")
  end
end
