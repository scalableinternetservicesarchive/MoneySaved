class CreateDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :deals do |t|
      t.string :name
      t.string :pic_url
      t.date :effdate
      t.date :expdate
      t.string :label
      t.string :store
      t.string :link
      t.string :intro
      t.timestamps
    end
  end
end
