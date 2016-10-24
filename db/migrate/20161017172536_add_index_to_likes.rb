class AddIndexToLikes < ActiveRecord::Migration[5.0]
  def change
  	add_index :likes, :deal
    add_index :likes, :user
    add_index :likes, [:deal, :user], unique: true
  end
end
