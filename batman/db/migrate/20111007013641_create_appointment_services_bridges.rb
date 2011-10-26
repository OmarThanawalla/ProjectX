class CreateAppointmentServicesBridges < ActiveRecord::Migration
  def change
    create_table :appointment_services_bridges do |t|
	  t.integer "appointment_id"
	  t.integer "service_id"
      t.timestamps
    end
  end
end
