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

end
