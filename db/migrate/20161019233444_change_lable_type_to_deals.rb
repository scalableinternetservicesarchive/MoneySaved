class ChangeLableTypeToDeals < ActiveRecord::Migration[5.0]
  def change
  	change_column :deals, :label, :integer

  end
end
