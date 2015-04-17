class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :user_phone
      t.text :address
      t.integer :cost

      t.timestamps null: false
    end
  end
end
