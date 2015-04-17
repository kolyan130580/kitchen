class AddAnnotationToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :annotation, :string
  end
end
