class CartsController < ApplicationController
  def show
  	@cart = Cart.find(params[:id])
  	authorize @cart
  end

  def checkout
  	cart = Cart.find(params[:id])
  	cart.checkout
  	order = cart.new_order
  	order.user = current_user
  	order.save
		current_user.current_cart = nil
		current_user.save
		redirect_to order_path(order)
  end
end
