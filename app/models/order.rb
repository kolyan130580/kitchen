class Order < ActiveRecord::Base

	has_many :dish_nums
	has_many :dishes, through: :dish_nums

	def get_title
		"Заказ № " + self.id.to_s
	end
end
