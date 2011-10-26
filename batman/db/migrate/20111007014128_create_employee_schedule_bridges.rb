class CreateEmployeeScheduleBridges < ActiveRecord::Migration
  def change
    create_table :employee_schedule_bridges do |t|
	  t.integer "employee_id"
	  t.integer "schedule_id", :null => false
      t.timestamps
    end
  end
end
