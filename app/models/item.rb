class Item < ActiveRecord::Base
	has_many :line_items
	has_many :carts, through: :line_items
	belongs_to :category

	accepts_nested_attributes_for :category

	validates :name, presence: true, uniqueness: true
	validates :description, presence: true
	validates :image_url, presence: true
	validates :price, presence: true, numericality: { greater_than: 0 }
	validates :inventory, presence: true, numericality: { only_integer: true, greater_than: 0 }

	def self.new_products
		self.all.last(6)
	end
end