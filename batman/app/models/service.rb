class Service < ActiveRecord::Base

	has_many :appointment_services_bridges
	has_many :appointments, :through => :appointment_services_bridges
end
