
class SessionsController < ApplicationController
def create
          @user = User.authenticate(params[:email],params[:password])
          if @user
          	session[:user_id] = @user.id
            render :json => {:responseCode => "200",
                             :responseMessage => "Signed in successfully"
                            }
          else
            render :json => {
                             :responseCode => "400",
                             :responseMessage => "Invalid Attempt! Please try again"
                            }

          end
     end
     def destroy
          session[:user_id] = nil
          render :json =>{:responseMessage => "Thanks for using application!!!"}
     end	

end

# class SessionsController < ApplicationController
	
# 	def create
# 		@user = User.authenticate(params[:email],params[:password])
# 		if @user
# 			session[:user_id] = @user.id
# 			 render :json => {:responseCode => "200",
#                             :responseMessage => "Login successfully"
#                             }
#          else
#             render :json => {
#                              :responseCode => "400",
#                              :responseMessage => "Invalid Attempt! Please try again"
#                             }
#          end
# 	end

# 	def destroy
# 		session[:user_id] = nil
# 		render :json => {:msg => "Logout successfully"}
# 	end
# end