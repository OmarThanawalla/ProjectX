class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
	  t.integer "service_id"
	  t.integer "customer_id", :null => false
	  t.time "start_time"
	  t.time "end_time"
	  t.integer "employee_id"
	  t.integer "business_id"
      t.timestamps
    end
  end
end
