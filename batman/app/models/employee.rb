class Employee < ActiveRecord::Base
	has_many :employee_schedule_bridges
	has_many :schedules, :through => :employee_schedule_bridges
	belongs_to :business
	has_many :appointments
end
