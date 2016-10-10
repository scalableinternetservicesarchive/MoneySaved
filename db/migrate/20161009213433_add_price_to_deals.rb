class AddPriceToDeals < ActiveRecord::Migration[5.0]
  def change
    add_column :deals, :price, :float
  end
end
