class Admin::ProductsController < Admin::AdminController
	layout 'admin'
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@products = Product.new
		@ingredients = Ingredient.all
	end

	def create
		@products = Product.new(params[:products].permit(:name, :price, :margin_product, :picture, :ingredient_id))
		# @id_product = Product.find(params[:id])
		@ingredients = Ingredient.all

		@Composition = Composition.new
		if @products.save
			@Composition.product_id = @products.id
			@Composition.ingredient_id = @products.id
			@Composition.save
			flash[:notice] = "le produit a été ajouté avec succes!"
			redirect_to admin_products_path
		else
			render 'new'
		end
	end

	def edit
		@products = Product.find(params[:id])
		@ingredients = Ingredient.all
	end
	def update
		@products = Product.find(params[:id])
		if @products.update(params[:products].permit(:name, :price, :margin_product, :picture))

			flash[:notice] = "Le produit a été modifié avec succes!"
			redirect_to admin_product_path
		else
			render 'edit'
		end
	end

	def destroy
		@products = Product.find(params[:id])
		if @products.destroy
			flash[:notice] = "Le produit a été supprimé avec succes!"
			redirect_to admin_products_path
		end
	end
end