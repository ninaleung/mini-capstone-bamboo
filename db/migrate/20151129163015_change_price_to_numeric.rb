class ChangePriceToNumeric < ActiveRecord::Migration
  def change
    change_column :products, :price, :numeric
  end
end