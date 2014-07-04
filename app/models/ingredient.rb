class Ingredient < ActiveRecord::Base
	def self.ingredient
		Ingredient.find()
	end
	
	has_and_belongs_to_many :product 
end
