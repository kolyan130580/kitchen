class MenuController < ApplicationController
	
	before_action :elem_body_id
	before_action :title_name

	def index
		@dishes = Dish.order("updated_at DESC")
		@special_offer = @dishes.where(special_offer: true).shuffle.first
		@best_dishes = @dishes.where(best_dish: true)
	end

	def special_offers
		@special_offers = Dish.where(special_offer: true).order("updated_at DESC")
	end
	
	protected

		def title_name
			@title = 'Меню'
		end

		def elem_body_id
			@body_id = 'page2'
		end
end
