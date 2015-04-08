class FaqController < ApplicationController

	protected

		def title_name
			@title = 'FAQ'
		end

		def elem_body_id
			@body_id = 'page5'
		end
end
