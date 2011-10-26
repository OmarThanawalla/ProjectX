class CreateUserShoutsBridges < ActiveRecord::Migration
  def change
    create_table :user_shouts_bridges do |t|
	  t.integer "User_id", :null => false
	  t.integer "Shouts_id", :null => false
      t.timestamps
    end
  end
end
