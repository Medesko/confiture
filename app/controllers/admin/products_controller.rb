class Admin::ProductsController < Admin::AdminController
	layout "admin"

	def create
		@Products = Product.new
	end

end