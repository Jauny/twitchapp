class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]

    if User.find_by_provider_and_uid(auth["provider"], auth["uid"])
      @user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])
    else
      @user = User.create_with_omniauth(auth)
      send_signup_tweet
    end
    
    session[:user_id] = @user.id
    redirect_to root_url, :notice => "SIGNED IN! NOW STAY HERE, DON'T MOVE, GOOD!"
  end

  def send_signup_tweet
    client_user = Twitter::Client.new(
      :oauth_token => @user.token,
      :oauth_token_secret => @user.secret
    )
    Thread.new { client_user.update("Checkout twitchr.herokuapp.com made by @Jauny 5 weeks in @devbootcamp !") }
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :alert => "WHAT ARE YOU DOING? COME BACK NOW!"
  end
end