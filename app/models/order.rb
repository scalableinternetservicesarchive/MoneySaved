class Order < ApplicationRecord
	belongs_to :user, class_name: "User"
	belongs_to :deal, class_name: "Deal"

	default_scope -> { order(created_at: :desc) }
	
 	validates :user_id, presence: true
 	validates :deal_id, presence: true
end
