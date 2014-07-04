class Client < ActiveRecord::Base
	validates :name, presence: true
	validates :tel, presence: true
	validates :email, presence: true
	validates :address, presence: true
end
