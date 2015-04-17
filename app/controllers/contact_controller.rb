class ContactController < ApplicationController
	
	before_action :elem_body_id
	before_action :title_name
	
	protected

		def title_name
			@title = 'Контакты'
		end

		def elem_body_id
			@body_id = 'page6'
		end
end
