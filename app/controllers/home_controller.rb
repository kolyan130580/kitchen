class HomeController < ApplicationController

	protected

		def title_name
			@title = 'About'
		end

		def elem_body_id
			@body_id = 'page1'
		end
end
