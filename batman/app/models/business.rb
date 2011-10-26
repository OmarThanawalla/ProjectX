class Business < ActiveRecord::Base

	belongs_to :address
	belongs_to :category
	has_many :employees

end
