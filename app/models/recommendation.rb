class Recommendation < ApplicationRecord
	belongs_to :like
	belongs_to :order
end
