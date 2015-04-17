ActiveAdmin.register Dish do
  permit_params :name, :description, :portion, :price, :image, :annotation, :best_dish, :special_offer
  config.filters = false

  menu label: "Блюда"

  scope :all
  scope :best_dish
  scope :special_offer

  index do
    selectable_column
    id_column
    column "Фото", :image do |dish|
      image_tag dish.image.url(:thumb)
    end
    column "Название", :name
    column "Краткая информация", :annotation
    column "Порция", :portion
    column "Стоимость", :price
    column :best_dish
    column :special_offer
    column "Создан", :created_at
    column "Обновлен", :updated_at
    actions
  end

  show do 
    panel "Подробнее" do  
      attributes_table_for resource do
        row "Название" do
          resource.name
        end
        row "Фото" do
          image_tag resource.image.url(:medium)
        end 
        row "Краткая информация" do
          resource.annotation
        end 
        row "Полное описание" do
          resource.description
        end 
        row "Порция" do
          resource.portion
        end 
        row "Стоимость" do
          resource.price
        end 
        row :best_dish do
          resource.best_dish ? "Да" : "Нет"
        end
        row :special_offer do
          resource.special_offer ? "Да" : "Нет"
        end
        row "Создан" do
          resource.created_at
        end
        row "Обновлен" do
          resource.updated_at
        end
      end
    end
  end

  form do |f|
    f.inputs "Dish Details" do
      f.input :name, label: "Название"
      f.input :annotation, label: "Краткая информация"
      f.input :description, label: "Полное описание"
      f.input :portion, label: "Порция"
      f.input :price, label: "Стоимость"
      f.input :best_dish
      f.input :special_offer
      f.file_field :image, label: "Фото"
    end
    f.actions
  end

end
