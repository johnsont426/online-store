class CartsController < ApplicationController
  def show
  	@cart = Cart.find(params[:id])
  end

  private

  def checkout
  	cart = Cart.find(params[:id])
  	cart.checkout
  	cart.new_order
		current_user.current_cart = nil
		redirect_to cart_path
  end
end
