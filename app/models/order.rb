class Order < ApplicationRecord
	belongs_to :user, class_name: "User"
	belongs_to :deal, class_name: "Deal"

	default_scope -> { order(created_at: :desc) }
	
	validates :order_no, presence: true
	validates :address, presence: true
	validates :name, presence: true
	validates :count, presence: true
 	validates :user_id, presence: true
 	validates :deal_id, presence: true
end
