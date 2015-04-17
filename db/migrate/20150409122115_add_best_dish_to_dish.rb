class AddBestDishToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :best_dish, :boolean, default: false
  end
end
