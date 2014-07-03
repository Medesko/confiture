class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :tel
      t.string :email
      t.string :address

      t.timestamps
    end
    add_index :clients, :email, unique: true
  end
end
