class CreateFollowsBridges < ActiveRecord::Migration
  def change
    create_table :follows_bridges do |t|
	  t.integer "User_id", :null =>false
	  t.integer "Follows_id", :null => false
      t.timestamps
    end
  end
end
