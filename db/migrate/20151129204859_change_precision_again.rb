class ChangePrecisionAgain < ActiveRecord::Migration
  def change
    change_column :products, :price, :numeric, precision: 7, scale: 2
  end
end
  