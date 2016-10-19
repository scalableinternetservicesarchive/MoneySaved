class Like < ApplicationRecord
  belongs_to :deal, class_name: "Deal"
  belongs_to :user, class_name: "User"
end
