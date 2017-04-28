class StoreController < ApplicationController
  def home
  	@categories = Category.all
  	@items = Item.all
  end
end
