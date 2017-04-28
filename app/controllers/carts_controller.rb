class CartsController < ApplicationController
  def show
  	@cart = Cart.find(params[:id])
  end

  def checkout
  	cart = Cart.find(params[:id])
  	cart.checkout
  	order = cart.new_order
		current_user.current_cart = nil
		current_user.save
		redirect_to order_path(order)
  end
end
