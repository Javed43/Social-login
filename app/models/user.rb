class User < ActiveRecord::Base
  attr_accessible :email, :password, :username

  def self.authenticate(email, password)
	user = find_by_email(email)
	  if user and user.password.eql?(password)
		 user
	  else
		 false
	  end
  end
  
  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.username = auth["info"]["name"]
      user.provider = auth["provider"]
      user.uid = (auth["uid"]).to_s
      user.name = auth["info"]["name"]
      user.email = auth["info"]["name"] +"@"+ user.provider + ".com"
    end
  end




  # def self.create_with_omniauth(auth)
  # create! do |user|
  #   user.username = auth["info"]["name"]
  #   user.provider = auth["provider"]
  #   user.uid = auth["uid"]
  #   user.name = auth["info"]["name"]
  #   user.email = auth["info"]["name"] + "@twitter.com"
  #  end
  # end
end
