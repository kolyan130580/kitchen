class CatalogController < ApplicationController

	before_action :elem_body_id
	before_action :title_name

	def index
		@dishes = Dish.order("updated_at DESC")
	end
	
	def show
		@dish = Dish.find params[:id]
	end

	protected

		def title_name
			@title = 'Каталог'
		end

		def elem_body_id
			@body_id = 'page3'
		end
end
