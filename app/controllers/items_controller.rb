class ItemsController < ApplicationController
	def index
		if params[:category_id]
      @items = Category.find(params[:category_id]).items
    else
      @items = Item.all
    end
	end

	def new
		@item = Item.new
	end

	def create
		item = Item.create(item_params)
	end

	def show
		@item = Item.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def item_params
		params.require(:item).permit(:name, :description, :image_url, :price, :inventory, :category_id, categories_attributes: [:name])
	end

end
