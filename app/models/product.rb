class Product < ActiveRecord::Base
	def self.featured
		Product.order(created_at: :desc).limit(4)
	end
end
