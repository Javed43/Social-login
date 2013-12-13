class SessionsController < ApplicationController
	def create
    @user = User.authenticate(params[:email],params[:password])
    if @user
    	session[:user_id] = @user.id
         msg1 = @user.username
         msg = "Welcome  "+msg1
    else
         msg = "user not signed up"
    end
      flash[:notice] = msg
      redirect_to sessions_path  
  end

  # def twitter
  #   auth = request.env["omniauth.auth"]
  #   user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  #   session[:user_id] = user.id
  #   redirect_to sessions_url, :notice => "Signed in!"
  # end
  def social
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to sessions_url, notice: user.provider
  end
    
  def destroy
      session[:user_id] = nil
      redirect_to root_path
  end	
 
end
