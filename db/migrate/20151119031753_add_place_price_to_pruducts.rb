class AddPlacePriceToPruducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change :price, :decimal, precision: 7, scale: 3
    end
  end
end
