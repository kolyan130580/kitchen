class ShippingController < ApplicationController
	
	before_action :elem_body_id
	before_action :title_name
	
	protected

		def title_name
			@title = 'Доставка'
		end

		def elem_body_id
			@body_id = 'page4'
		end
end
