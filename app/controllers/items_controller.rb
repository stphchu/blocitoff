class ItemsController < ApplicationController
  respond_to :html, :js

#INDEX
  def index
     @items = Item.all
  end

#NEW
  def new
     @item = Item.new
  end

#CREATE
  def create
     @item = Item.new
     @item.name = params[:item][:name]
     @item.user = current_user

     if @item.save
       redirect_to request.referrer
     else
       flash[:error] = "There was an error creating the item. Please try again."
     end
  end

#SHOW
  def show
    @item = Item.find(params[:id])
  end

#DESTROY
  def destroy
    @item = current_user.items.find(params[:id])

    if @item.destroy    
      flash[:notice] = "Item marked as complete"
    else
      flash[:error] = "There was an error deleting the item. Please try again"
    end
  end

end
