class AddStockToProducts < ActiveRecord::Migration
  def change
    add_column :products, :in_stock, :boolean
  end
end
