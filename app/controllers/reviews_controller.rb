class ReviewsController < ApplicationController
	before_action :set_item

	def index
		@reviews = @item.reviews
		render 'index.js'
	end

	def new
		@review = Review.new
		render 'new.js', layout: false
	end

	def create
		@review = @item.reviews.create(review_params)
		render json:@review
	end

	private

		def set_item
			@item = Item.find(params[:item_id])
		end

		def review_params
			params.require(:review).permit(:star, :title, :content)
		end
end