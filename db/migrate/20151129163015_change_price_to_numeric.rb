class ChangePriceToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change :price, 'numeric USING CAST(price AS numeric)', precision: 7, scale: 2
    end
  end
end