class SessionsController < ApplicationController
	include SessionsHelper

	def new
	end

	def create
		user=User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			redirect_to user
		else
			flash_now[:error] = "Invalid email/password combination"
			render :new
		end
	end

	def destroy
		redirect_to root_url
	end

end
