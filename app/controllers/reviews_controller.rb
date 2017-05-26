class ReviewsController < ApplicationController
	before_action :set_item

	def index
		@reviews = @item.reviews
	end

	def new
		@review = Review.new
		render 'new.js', layout:false
	end

	def create
		@review = @item.reviews.create(review_params)
	end

	def show
	end

	private

		def set_item
			@item = Item.find(params[:item_id])
		end

		def review_params
			params.require(:review).permit(:star, :title, :content)
		end
end