class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
	  t.time "start_time"
	  t.time "stop_time"
	  t.date "date"
      t.timestamps
    end
  end
end
