class Category < ApplicationRecord
	belongs_to :deal, class_name: "Deal"


end
