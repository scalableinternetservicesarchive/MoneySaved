class AddIndexToLikes < ActiveRecord::Migration[5.0]
  def change
  
 
  	add_index :likes, :deal_id
    add_index :likes, :user_id
    add_index :likes, [:deal_id, :user_id], unique: true
 
  end
end
