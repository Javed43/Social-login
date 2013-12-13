class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :terms

  def self.authenticate(email,password)
	  	user = find_by_email(email)
	  	if user and user.password == Digest::SHA1.hexdigest(password)
	  		user
	  	else
	  		false
	  	end
  end
end
