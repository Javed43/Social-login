    # ENV['GITHUB_KEY'] ||= '6fb39bbb2296cf6639a9'
    # ENV['GITHUB_SECRET'] ||= '2c35f76996d871cec12a59c227261b79b33d1a53'
    # ENV['TWITTER_KEY'] ||= '4ntCRLcHZv5erie8k4BkQ'
    # ENV['TWITTER_SECRET'] ||= 'WCdnTvne9hIZx1xUFa8J3IhZGTD21CTz9colC4Y'  

    # Rails.application.config.middleware.use OmniAuth::Builder do  
    #   provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']  
    #   provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']  
    # end  

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '4ntCRLcHZv5erie8k4BkQ', 'WCdnTvne9hIZx1xUFa8J3IhZGTD21CTz9colC4Y'
  provider :google_oauth2,'95519292621-ad40p5lk0ucsj18hhk02qn3hrhp7i715.apps.googleusercontent.com','oFMCZbHjm-HlOH0iZhsODJ7I'
  provider :facebook, '178918035631441', '435d522f878f5bca0e84a75cb8a53a92'
  provider :github, '6fb39bbb2296cf6639a9', '2c35f76996d871cec12a59c227261b79b33d1a53', scope: "user:email,user:follow"
  provider :linkedin, "75mtky0x1lp57z", "PPjK8YxxAFRZLU1D", :scope => 'r_fullprofile r_emailaddress r_network'
end