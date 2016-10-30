class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|
      t.integer :user_id
      t.integer :deal_id

      t.timestamps
    end

    	add_index :recommendations, :user_id
#	add_index :recommendations, :deal_id
	add_index :recommendations, [:user_id, :deal_id], unique: true
  end
end
