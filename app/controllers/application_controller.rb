class ApplicationController < ActionController::Base
	before_action :elem_body_id
	before_action :title_name
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
end
