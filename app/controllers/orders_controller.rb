class OrdersController < ApplicationController
  def show
  	@order = Order.find(params[:id])
  	authorize @order
  end

  def index
  	@orders = Order.all
  	authorize @orders
  end
end
