class ListsController < ApplicationController

  def index
    @user = current_user
    render :show
  end

  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    if @list.save
      flash[:notice] = "Thunderstruck!!!"
      redirect_to lists_path
    else
      flash[:notice] = @list.errors.full_messages
      redirect_to root_path
    end
  end


  def list_params
    params[:list].permit(:title)
  end


end
