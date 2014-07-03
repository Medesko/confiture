class Ingredient < ActiveRecord::Base
	def self.ingredient
		Ingredient.find()
	end
end
