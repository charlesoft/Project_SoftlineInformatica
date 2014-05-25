class ApplicationController < ActionController::Base
	protect_from_forgery

	layout :layout_by_resource

	before_filter :authenticate_user!
	

	protected
	def layout_by_resource
		if devise_controller? == true
			"application_test"	
		else
			if user_signed_in?
				"application_test"
			else
				"application"
			end
		end
	end


end
