class ItemsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def new
  	@item = current_user.items.new
  end

  def create
    @item = current_user.items.new(item_params)
    if @item.save
    redirect_to @item
  else
    render 'new'
  end
  end

  def edit
  @item = current_user.items.find(params[:id])
	end

	def update
  @item = current_user.items.find(params[:id])
 
  if @item.update(params[:item].permit(:title, :price, :content))
    redirect_to @item
  else
    render 'edit'
  end
	end

	def show
	  @item = Item.find(params[:id])
	end

   def item_params
      params.require(:item).permit(:content, :title, :price)
    end
end