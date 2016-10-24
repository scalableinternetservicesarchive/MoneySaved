class Deal < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :orders

	validates :name, presence: true
	validates :label, presence: true
	validates :link, presence: true
	validates :price, presence: true
end
