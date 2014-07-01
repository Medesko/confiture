class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :margin_product
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
