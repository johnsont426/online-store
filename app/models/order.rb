class Order < ActiveRecord::Base
	belongs_to :user
	has_one :cart
	has_many :line_items, through: :cart
end