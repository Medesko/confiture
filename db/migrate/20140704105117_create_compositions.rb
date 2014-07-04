class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.integer :product_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
