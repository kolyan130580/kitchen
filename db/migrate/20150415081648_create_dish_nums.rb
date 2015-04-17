class CreateDishNums < ActiveRecord::Migration
  def change
    create_table :dish_nums do |t|
      t.integer :dish_id
      t.integer :order_id
      t.integer :dish_num

      t.timestamps null: false
    end
  end
end
