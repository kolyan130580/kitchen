class ChangeColumnPriceFromDish < ActiveRecord::Migration
  def change
  	change_table :dishes do |t|
		t.remove :price
		t.integer :price, default: 0
	end
  end
end
