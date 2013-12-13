class UsersController < ApplicationController
	def index
	end	

	def new
		@user = User.new
	end	
	
	def create
		@user = User.new(params[:user])
		#@user.password = Digest::SHA1.hexdigest(params[:password])

		if @user.save
		redirect_to root_path	
    end                     
    end	
end
