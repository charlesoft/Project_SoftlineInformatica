class WelcomeController < ApplicationController

	before_filter :authenticate_user!, :except => [:index, :test]

	#layout 'application_test', :only => :test

	def index

	end

	def test
		redirect_to new_user_session_path
	end


end