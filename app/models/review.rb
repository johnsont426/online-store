class Review < ActiveRecord::Base
	belongs_to :item
	validates :star, presence: true
	validates :title, presence: true
	validates :content, presence: true
end
