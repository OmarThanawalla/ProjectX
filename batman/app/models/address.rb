class Address < ActiveRecord::Base

	has_many :customers
	has_many :businesses
end
