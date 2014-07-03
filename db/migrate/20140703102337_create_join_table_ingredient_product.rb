class CreateJoinTableIngredientProduct < ActiveRecord::Migration
  def change
    create_join_table :ingredients, :products do |t|
      # t.index [:ingredient_id, :product_id]
      # t.index [:product_id, :ingredient_id]
    end
  end
end
