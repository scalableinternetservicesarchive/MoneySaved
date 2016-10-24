class Comment < ApplicationRecord
  	belongs_to :user
  	belongs_to :deal

  	default_scope -> { order(created_at: :desc) }

  	validates :user_id, presence: true
	validates :deal_id, presence: true
  	validates :content, presence:true, length: { minimum: 10 }
end
