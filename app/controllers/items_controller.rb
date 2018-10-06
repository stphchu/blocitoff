class ItemsController < ApplicationController
  respond_to :html, :js

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
    flash[:error] = "Item couldn't be removed, try again" unless @item.destroy
  end


end
