class ChangePriceBackToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change :price, 'decimal USING CAST(price AS decimal)', precision: 7, scale: 2
    end
  end
end
