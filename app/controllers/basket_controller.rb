class BasketController < ApplicationController
	before_action :elem_body_id
	before_action :title_name

	def dishes
		param_dish = params[:dish_id]
		dish_id = []
		param_dish.each do |key, val|
			dish_id << key
		end
		@dishes = Dish.find(dish_id)
		@order = Order.new
		render partial: 'basket'
	end

	def order
		order = Order.new
		order.user_name = params[:user_name]
		order.user_phone = params[:user_phone]
		order.address = params[:address]
		cost = 0
		if order.save
			params[:order].each do |id, dish_num|
				dish = Dish.where(:id => id).first
				if dish
					order.dish_nums.create(:dish_num => dish_num[:dish_num], :dish_id => id)
					cost += (dish.price * dish_num[:dish_num].to_i)
				end
			end
		end
		order.cost = cost
		if order.save
			flash[:notice] = "Ваш заказ принят в обработку"
		else
			flash[:notice] = "Какая-то ошибка!!!"
		end
		redirect_to '/basket'
	end

	protected

		def title_name
			@title = 'Корзина'
		end

		def elem_body_id
			@body_id = 'page7'
		end
end
