class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the To Don't List"
      redirect_to root_path
    else
      flash[:notice] = "INCORRECT!!!!"
      render :new
    end
  end

  def update
  end

  def edit
  end


  def destroy
  end

 private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
