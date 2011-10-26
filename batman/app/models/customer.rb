class Customer < ActiveRecord::Base

	belongs_to :address
	has_many :appointments


end
