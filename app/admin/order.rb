ActiveAdmin.register Order do
  config.filters = false
  config.clear_action_items!

  menu label: "Заказы"

  index do
    selectable_column
    column :id
    column "Имя клиента", :user_name
    column "Телефон клиента", :user_phone
    column "Адрес клиента", :address
    column "Стоимость заказа (грн.)", :cost 
    column "Список блюд", :dishes do |order|
      order.dish_nums.map { |dish_num| div dish_num.dish.name + ": " + dish_num.dish_num.to_s + " порция(и)" }.join()
    end
    column "Создан", :created_at
    column "Действия", :actions do |object|
      raw( %(<div class="table_actions">
            #{ link_to "Удалить", admin_order_path(object.id), method: :delete, "data-confirm" => "хотите удалить?", class: "delete_link member_link" } 
            </div>) 
        )
    end
  end
end