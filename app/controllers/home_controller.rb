class HomeController < ApplicationController
	
	before_action :elem_body_id
	before_action :title_name
	
	protected

		def title_name
			@title = 'О нас'
		end

		def elem_body_id
			@body_id = 'page1'
		end
end
