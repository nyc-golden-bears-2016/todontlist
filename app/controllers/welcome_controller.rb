class WelcomeController < ApplicationController

  def index
  end

  def login
      user = User.find_by(username: params[:user][:username])
    if user
      flash[:notice] = "Logged In"
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash[:notice] = "User Name And Password Did Not Match"
      redirect_to root_url
    end
  end

  def logout
  end

end
