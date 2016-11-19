module HomeHelper

	def cache_key_for_deal(d)
    		"deal/#{d.id}/#{d.updated_at}"
	end

end
