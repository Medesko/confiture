class Admin::IngredientsController < Admin::AdminController
	layout 'admin'
	def index
		@ingredients = Ingredient.all
	end

	def new
		@ingredients = Ingredient.new
	end 

	def create
		@ingredients = Ingredient.new(params[:ingredients].permit(:name_ingredient ))
		if @ingredients.save
			redirect_to  admin_ingredients_path
		else
			render 'new'
		end
	end

	def edit
		@ingredients = Ingredient.find(params[:id])
	end
	def update
		@ingredients = Ingredient.find(params[:id])
		if @ingredients.update(params[:ingredients].permit(:name_ingredient))

			flash[:notice] = "L'ingrédient a été modifié avec succes!"
			redirect_to admin_ingredients_path
		else
			render 'edit'
		end
	end

	def destroy
		@ingredients = Ingredient.find(params[:id])
		if @ingredients.destroy
			flash[:notice] = "Le ingredient a été supprimé avec succes!"
			redirect_to admin_ingredients_path
		end
	end

end
