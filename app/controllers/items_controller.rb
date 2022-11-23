class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    @user = User.select(:id, :first_name).find(@item.user_id)
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to @item, status: :created
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :price, :content, :image)
  end


end
