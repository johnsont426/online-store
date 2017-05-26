class ReviewsController < ApplicationController
	before_action :set_item

	def index
		@reviews = @item.reviews
		respond_to do |f|
			f.js { render 'index.js', :layout => false} 
		end
	end

	def create
	end

	def show
	end

	private

		def set_item
			@item = Item.find(params[:item_id])
		end
end