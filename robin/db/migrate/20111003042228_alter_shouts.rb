class AlterShouts < ActiveRecord::Migration
  def up
	add_column("shouts", "Convo_id", "integer", :null => false)
	add_column("shouts", "User_id", "integer", :null => false)
  end

  def down
	remove_column("shouts", "User_id")
	remove_column("shouts", "Convo_id")
  end
end
