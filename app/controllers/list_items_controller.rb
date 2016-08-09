class ListItemsController < ApplicationController

  def index
  end

  def create
    @list_item = ListItem.new(list_item_params)
    @list_item.list_id = params[:list_id]
    @list = List.find(params[:list_id])
    if @list_item.save!
      flash[:notice] = "Thunderstruck!!!"
      redirect_to @list
    else
      flash[:notice] = @list_item.errors.full_messages
      redirect_to @list
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @list_item = @list.list_items.find(params[:id])
    @list_item.destroy
    redirect_to @list
  end

 private

  def list_item_params
    params[:list_items].permit(:body, :complete)
  end


end
