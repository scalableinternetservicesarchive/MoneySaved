class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|
      t.references :like, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
