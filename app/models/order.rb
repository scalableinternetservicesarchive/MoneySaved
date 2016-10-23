class Order < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :deal, class_name: "Deal"

  validates :user_id, presence: true
  validates :deal_id, presence: true
end
