class AddSpecialOfferToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :special_offer, :boolean, default: false
  end
end
