class Schedule < ActiveRecord::Base

	has_many :employee_schedule_bridges
	has_many :employees, :through => :employee_schedule_bridges

end
