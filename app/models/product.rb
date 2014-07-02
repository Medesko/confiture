class Product < ActiveRecord::Base
	validates :name, presence: true
  	validates :price, presence: true

	def self.featured
		Product.order(created_at: :desc).limit(4)
	end
end
