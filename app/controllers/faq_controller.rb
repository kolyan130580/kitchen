class FaqController < ApplicationController
	
	before_action :elem_body_id
	before_action :title_name
	
	protected

		def title_name
			@title = 'FAQ'
		end

		def elem_body_id
			@body_id = 'page5'
		end
end
