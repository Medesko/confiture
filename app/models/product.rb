class Product < ActiveRecord::Base
	validates :name, presence: true
  	validates :price, presence: true

	def self.featured
		Product.order(created_at: :desc).limit(4)
	end

	has_attached_file :picture, :styles => { :small => "52x52>", :medium => "150x150>", :thumb => "250x250>", :large => "300x300>" },
	:url => "/system/:attachment/:id/:style/:basename.:extension",
	:path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
	validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
