class WelcomeController < ApplicationController
	def index
		@user = User.order(sign_in_count: :desc).first
	end
end
