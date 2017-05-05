class Cart < ActiveRecord::Base
	has_many :line_items
	has_many :items, through: :line_items
	belongs_to :user
	belongs_to :order

	def total
		self.line_items.collect{|line_item| line_item.item.price*line_item.quantity}.sum
	end

	def add_item(item_id)
		item = Item.find(item_id)
		if self.items.include?(item)
			line_item = self.line_items.find_by(item_id: item_id)
			line_item.quantity += 1
			line_item.save
		else
			line_item = self.line_items.build(item_id: item_id)
		end
		line_item
	end

	def checkout
		self.line_items.each do |line_item|
			line_item.item.inventory -= line_item.quantity
			line_item.item.save
		end
	end

	def new_order
		order = self.build_order(order_time: Time.now)
		self.save
		order
	end
end