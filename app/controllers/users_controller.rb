class UsersController < ApplicationController
<<<<<<< HEAD
	   
	   def new
         @user = User.new
       end
     
      def create
         @user = User.new( :email => params[:email],
                          :password => Digest::SHA1.hexdigest( params[:password]))
	     if @user.save
	        #  session[:user_id] = @user.id
			 render :json => {:responseCode => "200",
                            :responseMessage => "signed-up successfully"
                            }
         else
            render :json => {
                             :responseCode => "400",
                             :responseMessage => "Invalid Attempt! Please try again"
                            }
         end
	   end
end
