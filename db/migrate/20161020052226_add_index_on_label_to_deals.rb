class AddIndexOnLabelToDeals < ActiveRecord::Migration[5.0]
  def change
  	add_index :deals, :label
  end
end
