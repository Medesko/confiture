class Admin::ProductsController < Admin::AdminController
	layout 'admin'
	def index
		@products = Product.all
	end

	def show
		@products = Product.find(params[:id])
	end

	def new
		@products = Product.new
		@ingredients = Ingredient.all
	end

	def create
		@products = Product.new(params[:products].permit(:name, :price, :margin_product, :picture ))

		if @products.save
			redirect_to @products
		else
			render 'new'
		end
	end

	def edit
		@products = Product.find(params[:id])
	end
	def update
		@products = Product.find(params[:id])
		if @products.update(params[:products].permit(:name, :price, :margin_product, :picture))
			redirect_to admin_product_path
		else
			render 'edit'
		end
	end

	def destroy
	  @products = Product.find(params[:id])
	  @products.destroy
	  redirect_to admin_products_path
	end
end