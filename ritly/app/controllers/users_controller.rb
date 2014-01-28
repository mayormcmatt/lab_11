class UsersController < ApplicationController
	def new
		@user = User.new()
	end

	def show
		@user = User.find(params[:id])
	# @user.name = "Matt"
	# @user.email = "me@badassmofo.org"
	end

	def create
		@user = User.new(params[:user].permit(:name, :email, :password, :password_confirmation))
		if @user.save
			flash[:success] = "Welcome to Ritly!"
			redirect_to @user
		else
			render :new
		end
	end

	def update
		@user = User.find(params[:id])
		@user.update_attributes(params[:user])
		render :show
	end

end
