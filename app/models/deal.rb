class Deal < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :orders
	has_one :category

	has_many :reviews, through: :comments, source: :deal
	has_many :liked, through: :likes, source: :deal

	validates :name, presence: true
	validates :label, presence: true
	validates :link, presence: true
	validates :price, presence: true
end
