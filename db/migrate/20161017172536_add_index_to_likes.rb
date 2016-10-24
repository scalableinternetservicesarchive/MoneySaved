class AddIndexToLikes < ActiveRecord::Migration[5.0]
  def change
<<<<<<< HEAD
    
#  	 add_index :likes, :deal
#    add_index :likes, :user
#    add_index :likes, [:deal, :user], unique: true
=======
  	add_index :likes, :deal_id
    add_index :likes, :user_id
    add_index :likes, [:deal_id, :user_id], unique: true
>>>>>>> 20aa89e2f3cdb7873dc307150a34e0b58c8564ec
  end
end
