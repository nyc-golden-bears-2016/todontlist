class WelcomeController < ApplicationController

  def index
  end

  def login
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      flash[:notice] = "Logged In"
      session[:user_id] = user.id
      redirect_to lists_path
    else
      flash[:notice] = "User Name And Password Did Not Match"
      redirect_to root_url
    end
  end

  def logout
    session.clear
    redirect_to root_url, notice: "You chose unwisely"
  end

end
