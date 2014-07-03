class AddPictureToProducts < ActiveRecord::Migration
  def change
  	change_table :products do |t|
	  	t.string :picture_file_name
	  	t.string :picture_content_type
	  	t.string :picture_file_size
  	end
  end
end
