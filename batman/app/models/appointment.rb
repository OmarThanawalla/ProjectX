class Appointment < ActiveRecord::Base

	belongs_to :customer
	has_many :appointment_services_bridges
	has_many :services, :through => :appointment_services_bridges
	belongs_to :business
	belongs_to :employee
	
end
