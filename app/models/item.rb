class Item < ActiveRecord::Base
	has_many :line_items
	has_many :carts, through: :line_items
	belongs_to :category

	accepts_nested_attributes_for :categories
end