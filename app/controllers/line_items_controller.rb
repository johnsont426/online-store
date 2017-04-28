class LineItemsController < ApplicationController
	def create
		line_item = LineItem.find_or_create_by(item_id: params[:item_id])
		if current_cart = current_user.current_cart
			current_cart.add_item(params[:item_id])
			current_cart.save
		else
			current_cart = current_user.build_current_cart
			current_cart.add_item(params[:item_id])
			current_user.save
		end
		redirect_to cart_path(current_cart)
	end
end