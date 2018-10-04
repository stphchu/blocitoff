class ItemsController < ApplicationController

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
    end

  end

#SHOW
  def show
    @item = Item.find(params[:id])
  end


end
